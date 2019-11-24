import cv2
import numpy as np
import matplotlib.pyplot as plt


# 提取红色特征
def extractRed(img):  # img = cut_cut
    lower_red = np.array([0, 56, 150])  # 图像中低于这个lower_red的值，图像值变为255
    upper_red = np.array([200, 255, 255])  # 图像中高于这个upper_red的值，图像值变为255
    # get a frame and show  原图
    frame = img
    # change to hsv model
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    mask = cv2.inRange(hsv, lower_red, upper_red)
    kernel = np.array([[0, -1, 0], [-1, 9, -1], [0, -1, 0]], np.float32)  # 定义一个核
    white_word = cv2.filter2D(mask, -1, kernel=kernel)
    black_word = cv2.bitwise_not(white_word)
    return black_word


# 反相二值化图像
def accessBinary(img, threshold=160):
    img = cv2.bitwise_not(img)
    _, img = cv2.threshold(img, threshold, 0, cv2.THRESH_TOZERO)
    return img


# 根据长向量找出顶点
def extractPeek(array_vals, min_vals=10, min_rect=20):
    extrackPoints = []
    startPoint = None
    endPoint = None
    for i, point in enumerate(array_vals):
        if point > min_vals and startPoint == None:
            startPoint = i
        elif point < min_vals and startPoint != None:
            endPoint = i

        if startPoint != None and endPoint != None:
            extrackPoints.append((startPoint, endPoint))
            startPoint = None
            endPoint = None

    # 剔除一些噪点
    for point in extrackPoints:
        if point[1] - point[0] < min_rect:
            extrackPoints.remove(point)
    return extrackPoints


# 寻找边缘，返回边框的左上角和右下角（利用直方图寻找边缘算法（需行对齐））
def findBorderHistogram(path):  # 其实这个函数需要的是黑底白字的图
    borders = []
    vec_points_list = []
    src_img = cv2.imread(path, cv2.IMREAD_GRAYSCALE)
    img = cv2.bitwise_not(src_img)
    # 行扫描
    hori_vals = np.sum(img, axis=1)

    hori_points = extractPeek(hori_vals)  # 边框上下两边对应的纵坐标
    # 根据每一行来扫描列
    for hori_point in hori_points:
        extractImg = img[hori_point[0]:hori_point[1], :]
        vec_vals = np.sum(extractImg, axis=0)
        vec_points = extractPeek(vec_vals, min_rect=0)  # 边框左右两边对应的横坐标

        b = []
        for i in range(len(vec_points)):
            a = vec_points[i][1] - vec_points[i][0]
            b.append(a)
        # print(b)
        # 去除标出的杂质的框
        c = []
        for i in range(len(vec_points)):
            a = vec_points[i][1] - vec_points[i][0]
            if a > 6:
                c.append(vec_points[i])
        vec_points = c

        for vect_point in vec_points:
            border = [(vect_point[0], hori_point[0]), (vect_point[1], hori_point[1])]
            borders.append(border)

    return borders  # borders为每个边框左上角和右下角的坐标


# 显示结果及边框
def showResults(path, borders, results=None):  # 这个函数需要白底黑字的图，否则边框显示不出来
    img = cv2.imread(path)
    # 绘制
    for i, border in enumerate(borders):
        cv2.rectangle(img, border[0], border[1], (0, 0, 255))
        if results:
            cv2.putText(img, str(results[i]), border[0], cv2.FONT_HERSHEY_COMPLEX, 0.8, (0, 255, 0), 1)
        # cv2.circle(img, border[0], 1, (0, 255, 0), 0)
    return img


# 分割后的数字转换为mnist数据集格式 像素为28*28 黑底白字
def transMNIST(path, borders, size=(28, 28)):
    imgData = np.zeros((len(borders), size[0], size[0], 1), dtype='uint8')
    src_img = cv2.imread(path, cv2.IMREAD_GRAYSCALE)
    img = accessBinary(src_img) #反相二值化
    #膨胀
    kernel = np.ones((3, 3), np.uint8)
    img = cv2.dilate(img, kernel, iterations=1)

    for i, border in enumerate(borders):
        borderImg = img[border[0][1]:border[1][1], border[0][0]:border[1][0]]
        # 根据最大边缘拓展像素
        extendPiexl = (max(borderImg.shape) - min(borderImg.shape)) //4
        targetImg = cv2.copyMakeBorder(borderImg, 2, 2, extendPiexl+2 , extendPiexl+2 , cv2.BORDER_CONSTANT) #上下左右
        targetImg = cv2.resize(targetImg, size)
        targetImg = np.expand_dims(targetImg, axis=-1)
        imgData[i] = targetImg
    return imgData

#保存图片
def save_img(imgData):
    for i in range(len(imgData)):
        cv2.imwrite("\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\imgp\\{0}.jpg".format(i),imgData[i])

#两位数在第几个框
def Two_num_index(borders):
    vec_borders = []
    n = 0
    vec_borders_count = []
    two_num_index = []
    for i in range(len(borders)):
        a = borders[i][0][1]
        if a in vec_borders:
            []
        else:
            vec_borders.append(a)
    for vec in vec_borders:
        for border in borders:
            if border[0][1] == vec:
                n +=1
        vec_borders_count.append(n)
        n = 0
    for i in range(len(vec_borders_count)):
        if vec_borders_count[i] == 2:
            a = i
            two_num_index.append(a)
    return two_num_index

#最终分数表
def final_score(mark,two_num):
    l = len(two_num)
    for i in range(len(two_num)):
        two_num[i] += i-1
    two_num.sort(reverse=True)
    for i in two_num:
        ten = mark.pop(i)
        one = mark.pop(i)
        new_num = ten *10 + one
        mark.insert(i,new_num)
        score = mark
    sum = 0
    for i in score:
        sum += i
    score.insert(len(score), sum)
    return score

#按行拼接试卷，并缩小5倍 大小为（680，1971，3）
def Paper_h():
    #读取试卷四页
    test_path1 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_1.jpg"
    test_path2 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_2.jpg"
    test_path3 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_3.jpg"
    test_path4 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_4.jpg"
    img1 = cv2.imread(test_path1)
    img2 = cv2.imread(test_path2)
    img3 = cv2.imread(test_path3)
    img4 = cv2.imread(test_path4)

    #将试卷四页按行拼接
    imgs = [img1,img2,img3,img4]
    img = np.hstack(imgs)

    height,width,_= img.shape
    size = (1970,680)
    img = cv2.resize(img,size)
    # print(img.shape)
    path = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\paper\\paper1.jpg"
    cv2.imwrite(path,img)
    return img


#按列拼接试卷
def Paper_v():
    #读取试卷四页
    test_path1 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_1.jpg"
    test_path2 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_2.jpg"
    test_path3 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_3.jpg"
    test_path4 = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\src_img\\1_4.jpg"
    img1 = cv2.imread(test_path1)
    img2 = cv2.imread(test_path2)
    img3 = cv2.imread(test_path3)
    img4 = cv2.imread(test_path4)

    #将试卷四页按列拼接
    imgs = [img1,img2,img3,img4]
    img = np.vstack(imgs)
    path = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\paper\\paper\\1.jpg"
    cv2.imwrite(path, img)
    return img

