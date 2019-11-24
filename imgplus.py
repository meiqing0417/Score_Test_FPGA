import cv2
import numpy as np
from imgcut_to_imgData import *
import time
from test import *
import os

def Img_Process(path):

    img = cv2.imread(path)
    #提取红色字，即分数,压缩图片保存
    extractRed_img = extractRed(img)
    height,width = extractRed_img.shape
    size = (width//2,height//2)
    extractRed_img = cv2.resize(extractRed_img, size)
    cv2.imwrite("C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\new\\extractRed_img\\extractRed_img.jpg",extractRed_img)

    #数字分割
    save_path = "C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\new\\extractRed_img\\extractRed_img.jpg"
    borders = findBorderHistogram(save_path)
    test_img = showResults(save_path, borders)
    cv2.imwrite("C:\\Users\\meiqi\\Desktop\\mass\\FPGA\\new\\test_img\\test_img.jpg",test_img)

    #将分割下来的每个数字转换成MNIST格式，28*28大小,白底黑字
    t1 = time.time()
    imgData = transMNIST(save_path, borders)
    t2 = time.time()
    print(t2 - t1)

    #将所有的28*28大小的测试集保存到PYNQ中，并按行展开显示
    imgs_table = np.hstack(imgData)
    save_img(imgData)
    # 两位数在第几个框
    global two_num_index
    two_num_index = Two_num_index(borders)

    # mark = TEST(imgData)
    return 1


#读取分数数据
def Read_Score():
    score_path = '\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\make_score'
    files = os.listdir(score_path)
    if files:
        path = '\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\make_score\\score.txt'
        score_txt = open(path)
        score_list = score_txt.readlines()
        score_str = score_list[0][:-1]
        score = score_str.split(" ")
        for i in range(len(score)):
            score[i] = int(score[i])
        score1 = score[:len(score)//2]
        score2 = score[len(score)//2:]
    return score1,score2

#处理分数
def Final_score():

    two_num_1 = two_num_index
    two_num_2 = two_num_1.copy()
    print(two_num_1)
    score1, score2 = Read_Score()

    print(score1)
    print(score2)
    final_score1 = final_score(score1, two_num_1)
    final_score2 = final_score(score2,two_num_2)
    print(final_score1)
    print(final_score2)
    ss = str()
    for i in range(len(final_score1)-1):
        if final_score1[i] != final_score2[i]:
            ss += str(i + 1)
            ss += str(",")
    sss = ss[:-1]
    return sss,final_score2

#清空imgp目录下所有文件
def Remove(path):
    # path = "\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\imgp"
    files = os.listdir(path)

    for file in files:
        file_path = os.path.join(path, file)

        if file_path != path+"\\.ipynb_checkpoints":
            os.remove(file_path)


