# -*- coding: utf-8 -*-
import pandas as pd
from PyQt5.QtWidgets import *
from PyQt5 import QtCore, QtGui, QtWidgets
import webbrowser
from imgplus import *
from plot import *


#全局变量
path = 0
data_list = []
class Ui_mainWindow(object):

    # 读取试卷
    def Read_Paper(self):
        global path
        openfile_name = QFileDialog.getOpenFileName(self, '选择文件')
        path = openfile_name[0]
        print(path)
        if path:
            paper = QtGui.QPixmap(openfile_name[0])
            self.label_2.setPixmap(paper)

        ss = path.split("/")
        sss = ""
        for i in range(len(ss) - 1):
            sss += ss[i]
            sss += "/"
        sss += ss[-1][5:]
        global f_path
        f_path = sss
        print(f_path)

    # 处理图片
    def Process(self):
        if path:
            reply = QtWidgets.QMessageBox.information(self, '提示框', "图片正在处理，请等待……   ", QtWidgets.QMessageBox.Ok)
            global pa1
            pa1 = "\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\imgp"
            pa2 = "\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\make_score"
            Remove(pa1)
            Remove(pa2)
            ook = Img_Process(f_path)
            if ook:
                reply = QtWidgets.QMessageBox.information(self, '提示框', "图片处理已完成。   ", QtWidgets.QMessageBox.Ok)

        else:
            reply = QtWidgets.QMessageBox.information(self, '提示框', "请选择文件。   ", QtWidgets.QMessageBox.Ok)

    # 跳转到PYNQ-jupyternotebook
    def openUrl(self):
        if path:
            webbrowser.open_new_tab("http://192.168.2.99:9090/notebooks/img_test.ipynb")
        else:
            reply = QtWidgets.QMessageBox.information(self, '提示框', "请选择文件。   ", QtWidgets.QMessageBox.Ok)

    # 查看单条分数
    def check_score(self):
        self.tableWidget.clearContents()
        if path:
            score_path = '\\\\192.168.2.99\\xilinx\\jupyter_notebooks\\make_score'
            files = os.listdir(score_path)
            if files:
                sss,final_score2 = Final_score()
                print(sss)
                print(final_score2)

                #在列表索引0位置添加学号
                f_path_s = f_path.split("/")
                number = int(f_path_s[-1][:-4])
                stuID = str(1000 + number)
                stuID = stuID[1:]
                final_score2.insert(0, stuID)
                print(final_score2)

                if sss:
                    reply = QtWidgets.QMessageBox.information(self, '提示框', "请检查第{}题分数是否誊写错误。   ".format(sss), QtWidgets.QMessageBox.Ok)
                else:
                    reply = QtWidgets.QMessageBox.information(self, '提示框', "无誊写错误。   ".format(sss),
                                                              QtWidgets.QMessageBox.Ok)

                #将分数显示在表格
                for j in range(len(final_score2)):
                    sscore = str(final_score2[j])
                    print(sscore)
                    item = QtWidgets.QTableWidgetItem()
                    item.setTextAlignment(QtCore.Qt.AlignCenter)
                    self.tableWidget.setItem(0, j, item)
                    _translate = QtCore.QCoreApplication.translate
                    item = self.tableWidget.item(0, j)
                    item.setText(_translate("mainWindow", sscore))
                data_list.append(final_score2)
                print(data_list)

            else:

                reply = QtWidgets.QMessageBox.information(self, '提示框', "请先识别分数。   ", QtWidgets.QMessageBox.Ok)

        else:

            reply = QtWidgets.QMessageBox.information(self, '提示框', "请选择文件。   ", QtWidgets.QMessageBox.Ok)

    # 更新所有分数，并显示排名
    def Updade(self):
        if path:
            print(data_list)

            l_data_list = len(data_list)
            reply = QtWidgets.QMessageBox.information(self, '提示框', "当前有{0}个学生的分数。   ".format(str(l_data_list)),
                                                      QtWidgets.QMessageBox.Ok)

            #
            data_DF = pd.DataFrame(data_list)
            Sort_DF = data_DF.sort_values(10, ascending=False)
            Sort_DF['排名'] = np.arange(1, len(data_list) + 1, 1)
            Sort_array = np.array(Sort_DF)
            Sort_list = list(Sort_array)
            #
            print(Sort_list)


            for i in range(len(Sort_list)):
                for j in range(len(Sort_list[i])):
                    sscore = str(Sort_list[i][j])
                    # print(score)

                    item = QtWidgets.QTableWidgetItem()
                    item.setTextAlignment(QtCore.Qt.AlignCenter)
                    self.tableWidget.setItem(i, j, item)
                    _translate = QtCore.QCoreApplication.translate
                    item = self.tableWidget.item(i, j)
                    item.setText(_translate("mainWindow", sscore))

        else:
            reply = QtWidgets.QMessageBox.information(self, '提示框', "请选择文件。   ", QtWidgets.QMessageBox.Ok)

    def Analys_data(self):
        if path:
            score_list = copy.deepcopy(data_list)
            print(data_list)

            for data in score_list:
                data.pop(0)
            score_DF = pd.DataFrame(score_list, columns=['一', '二', '三', '四', '五', '六', '七', '八', '九', '总分'])
            score_DF.to_csv("C:\\Users\\meiqi\\Desktop\\score.csv")
            columns = ['一', '二', '三', '四', '五', '六', '七', '八', '九', '总分']
            rate = []
            for i in columns:
                if i == '九':
                    a = score_DF[i].sum() / (20 * score_DF[i].count())
                elif i == '总分':
                    a = score_DF[i].sum() / (100 * score_DF[i].count())
                else:
                    a = score_DF[i].sum() / (10 * score_DF[i].count())
                a = round(a, 3)
                rate.append(a)
            print(score_DF)
            max = score_DF.max()
            min = score_DF.min()

            Analys = [rate, max, min]
            print(Analys)
            Analys_DF = pd.DataFrame(Analys, columns=['一', '二', '三', '四', '五', '六', '七', '八', '九', '总分'],
                                     index=['得分率', "最高分", "最低分"])
            print(Analys_DF)
            Analys_DF.to_csv("C:\\Users\\meiqi\\Desktop\\Analys.csv")

            for i in range(len(Analys)):
                for j in range(len(Analys[i])):
                    sscore = str(Analys[i][j])
                    # print(score)

                    item = QtWidgets.QTableWidgetItem()
                    item.setTextAlignment(QtCore.Qt.AlignCenter)
                    self.tableWidget_2.setItem(i, j, item)
                    _translate = QtCore.QCoreApplication.translate
                    item = self.tableWidget_2.item(i, j)
                    item.setText(_translate("mainWindow", sscore))

            self.label_4.setText("注：当前有{0}个学生的分数。   ".format(len(data_list)))
            total = proportion(data_list)
            distribution(total)
            self.label_5.setPixmap(QtGui.QPixmap("1.jpg"))
            self.label_9.setPixmap(QtGui.QPixmap("2.jpg"))

        else:
            reply = QtWidgets.QMessageBox.information(self, '提示框', "请选择文件。   ", QtWidgets.QMessageBox.Ok)

    def setupUi(self, mainWindow):
        # 主窗口
        mainWindow.setObjectName("mainWindow")
        mainWindow.resize(1196, 839)
        self.centralwidget = QtWidgets.QWidget(mainWindow)
        self.centralwidget.setObjectName("centralwidget")

        # 标签页 共四页
        self.tabWidget = QtWidgets.QTabWidget(self.centralwidget)
        self.tabWidget.setGeometry(QtCore.QRect(0, 0, 1211, 881))
        font = QtGui.QFont()
        font.setFamily("Agency FB")
        font.setPointSize(12)
        self.tabWidget.setFont(font)
        self.tabWidget.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.tabWidget.setTabPosition(QtWidgets.QTabWidget.North)
        self.tabWidget.setTabShape(QtWidgets.QTabWidget.Rounded)
        self.tabWidget.setIconSize(QtCore.QSize(20, 20))
        self.tabWidget.setMovable(False)
        self.tabWidget.setObjectName("tabWidget")

        # 标签页一，读取试卷
        self.tab_1 = QtWidgets.QWidget()
        font = QtGui.QFont()
        font.setFamily("Agency FB")
        font.setPointSize(12)
        self.tab_1.setFont(font)
        self.tab_1.setObjectName("tab_1")

        # 滚动条
        self.scrollArea = QtWidgets.QScrollArea(self.tab_1)
        self.scrollArea.setGeometry(QtCore.QRect(0, 160, 1192, 641))
        self.scrollArea.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea.setSizeAdjustPolicy(QtWidgets.QAbstractScrollArea.AdjustToContentsOnFirstShow)
        self.scrollArea.setWidgetResizable(True)
        self.scrollArea.setObjectName("scrollArea")
        self.scrollAreaWidgetContents = QtWidgets.QWidget()
        self.scrollAreaWidgetContents.setGeometry(QtCore.QRect(0, 0, 2000, 680))
        self.scrollAreaWidgetContents.setMinimumSize(QtCore.QSize(2000, 680))
        self.scrollAreaWidgetContents.setStyleSheet("border-color: rgb(255, 255, 255);")
        self.scrollAreaWidgetContents.setObjectName("scrollAreaWidgetContents")

        # 设置widget使初始界面背景色为白色，其他无作用
        self.widget = QtWidgets.QWidget(self.scrollAreaWidgetContents)
        self.widget.setGeometry(QtCore.QRect(0, -10, 2000, 711))
        self.widget.setStyleSheet("background-color: rgb(255, 255, 255);")
        self.widget.setObjectName("widget")

        # label_2显示试卷图
        self.label_2 = QtWidgets.QLabel(self.widget)
        self.label_2.setGeometry(QtCore.QRect(0, 0, 2000, 680))
        self.label_2.setMinimumSize(QtCore.QSize(2000, 0))
        self.label_2.setText("")
        self.label_2.setObjectName("label_2")
        self.scrollArea.setWidget(self.scrollAreaWidgetContents)

        # label显示南京邮电大学图
        self.label = QtWidgets.QLabel(self.tab_1)
        self.label.setGeometry(QtCore.QRect(0, 0, 1200, 160))
        self.label.setStyleSheet("border-color: rgb(0, 0, 0);")
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap("NJUPT.jpg"))
        self.label.setScaledContents(False)
        self.label.setWordWrap(False)
        self.label.setIndent(-1)
        self.label.setOpenExternalLinks(False)
        self.label.setObjectName("label")

        # pushbutton选择文件
        self.pushButton = QtWidgets.QPushButton(self.tab_1)
        self.pushButton.setGeometry(QtCore.QRect(1010, 120, 91, 41))
        self.pushButton.setObjectName("pushButton")
        self.pushButton.clicked.connect(self.Read_Paper)

        # pushbutton_5确认
        self.pushButton_5 = QtWidgets.QPushButton(self.tab_1)
        self.pushButton_5.setGeometry(QtCore.QRect(1100, 120, 91, 41))
        self.pushButton_5.setObjectName("pushButton_5")
        self.pushButton_5.clicked.connect(self.Process)

        # label_11显示队员信息
        self.label_11 = QtWidgets.QLabel(self.tab_1)
        self.label_11.setGeometry(QtCore.QRect(0, 30, 291, 121))
        self.label_11.setText("")
        self.label_11.setPixmap(QtGui.QPixmap("TeamINFO.png"))
        self.label_11.setObjectName("label_11")

        self.tabWidget.addTab(self.tab_1, "")

        # 标签页二，识别分数
        self.tab_2 = QtWidgets.QWidget()
        self.tab_2.setObjectName("tab_2")

        # pushbutton_2跳转到pynq-jupyter网页
        self.pushButton_2 = QtWidgets.QPushButton(self.tab_2)
        self.pushButton_2.setGeometry(QtCore.QRect(410, 270, 381, 241))
        self.pushButton_2.setText("")
        self.pushButton_2.setFlat(True)
        self.pushButton_2.setObjectName("pushButton_2")
        self.pushButton_2.clicked.connect(self.openUrl)

        # label_3显示pynq图
        self.label_3 = QtWidgets.QLabel(self.tab_2)
        self.label_3.setGeometry(QtCore.QRect(420, 280, 361, 221))
        self.label_3.setText("")
        self.label_3.setPixmap(QtGui.QPixmap("PYNQ.jpg"))
        self.label_3.setObjectName("label_3")

        # label_6显示南京邮电大学图
        self.label_6 = QtWidgets.QLabel(self.tab_2)
        self.label_6.setGeometry(QtCore.QRect(0, 0, 1200, 160))
        self.label_6.setText("")
        self.label_6.setPixmap(QtGui.QPixmap("NJUPT.jpg"))
        self.label_6.setScaledContents(False)
        self.label_6.setWordWrap(False)
        self.label_6.setIndent(-1)
        self.label_6.setOpenExternalLinks(False)
        self.label_6.setObjectName("label_6")

        # widget_2使背景色为白色
        self.widget_2 = QtWidgets.QWidget(self.tab_2)
        self.widget_2.setGeometry(QtCore.QRect(0, 160, 1191, 651))
        self.widget_2.setObjectName("widget_2")
        self.widget_2.raise_()

        self.label_3.raise_()
        self.label_6.raise_()
        self.pushButton_2.raise_()
        self.tabWidget.addTab(self.tab_2, "")

        # 标签页三
        self.tab_3 = QtWidgets.QWidget()
        self.tab_3.setObjectName("tab_3")

        # 滚动条
        self.scrollArea_2 = QtWidgets.QScrollArea(self.tab_3)
        self.scrollArea_2.setGeometry(QtCore.QRect(0, 160, 1192, 641))
        self.scrollArea_2.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea_2.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea_2.setSizeAdjustPolicy(QtWidgets.QAbstractScrollArea.AdjustToContentsOnFirstShow)
        self.scrollArea_2.setWidgetResizable(True)
        self.scrollArea_2.setObjectName("scrollArea_2")
        self.scrollAreaWidgetContents_2 = QtWidgets.QWidget()
        self.scrollAreaWidgetContents_2.setGeometry(QtCore.QRect(0, 0, 1169, 2000))
        self.scrollAreaWidgetContents_2.setMinimumSize(QtCore.QSize(1169, 2000))
        self.scrollAreaWidgetContents_2.setObjectName("scrollAreaWidgetContents_2")

        # tableWidget表格1，显示学号、每题分数、总分、排名
        self.tableWidget = QtWidgets.QTableWidget(self.scrollAreaWidgetContents_2)
        self.tableWidget.setGeometry(QtCore.QRect(0, 0, 1171, 2000))
        self.tableWidget.setMinimumSize(QtCore.QSize(1171, 2000))
        self.tableWidget.setRowCount(50)
        self.tableWidget.setColumnCount(12)
        self.tableWidget.setObjectName("tableWidget")

        # 表格1，50行
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        self.tableWidget.setVerticalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(8, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(9, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(10, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(11, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(12, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(13, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(14, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(15, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(16, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(17, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(18, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(19, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(20, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(21, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(22, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(23, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(24, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(25, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(26, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(27, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(28, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(29, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(30, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(31, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(32, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(33, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(34, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(35, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(36, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(37, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(38, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(39, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(40, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(41, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(42, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(43, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(44, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(45, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(46, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(47, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(48, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setVerticalHeaderItem(49, item)

        # 表格1，12列
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        self.tableWidget.setHorizontalHeaderItem(8, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        self.tableWidget.setHorizontalHeaderItem(9, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        self.tableWidget.setHorizontalHeaderItem(10, item)
        item = QtWidgets.QTableWidgetItem()
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)

        # 单元格的行高、列高
        self.tableWidget.setHorizontalHeaderItem(11, item)
        self.tableWidget.horizontalHeader().setDefaultSectionSize(95)
        self.tableWidget.horizontalHeader().setMinimumSectionSize(30)
        self.tableWidget.verticalHeader().setDefaultSectionSize(30)
        self.tableWidget.verticalHeader().setMinimumSectionSize(30)

        self.scrollArea_2.setWidget(self.scrollAreaWidgetContents_2)

        # label_7显示南京邮电大学图
        self.label_7 = QtWidgets.QLabel(self.tab_3)
        self.label_7.setGeometry(QtCore.QRect(0, 0, 1200, 160))
        self.label_7.setText("")
        self.label_7.setPixmap(QtGui.QPixmap("NJUPT.jpg"))
        self.label_7.setScaledContents(False)
        self.label_7.setWordWrap(False)
        self.label_7.setIndent(-1)
        self.label_7.setOpenExternalLinks(False)
        self.label_7.setObjectName("label_7")

        # pushbutton_6更新，显示所有分数信息
        self.pushButton_6 = QtWidgets.QPushButton(self.tab_3)
        self.pushButton_6.setGeometry(QtCore.QRect(1100, 120, 91, 41))
        self.pushButton_6.setObjectName("pushButton_6")
        self.pushButton_6.clicked.connect(self.Updade)

        # pushbutton_3开始，显示每条分数信息
        self.pushButton_3 = QtWidgets.QPushButton(self.tab_3)
        self.pushButton_3.setGeometry(QtCore.QRect(1010, 120, 91, 41))
        self.pushButton_3.setObjectName("pushButton_3")
        self.pushButton_3.clicked.connect(self.check_score)

        # label_13显示队员信息
        self.label_13 = QtWidgets.QLabel(self.tab_3)
        self.label_13.setGeometry(QtCore.QRect(0, 30, 291, 121))
        self.label_13.setText("")
        self.label_13.setPixmap(QtGui.QPixmap("TeamINFO.png"))
        self.label_13.setObjectName("label_13")

        self.tabWidget.addTab(self.tab_3, "")

        # 标签页四，分析数据
        self.tab_4 = QtWidgets.QWidget()
        self.tab_4.setObjectName("tab_4")

        # label_8显示南京邮电大学图
        self.label_8 = QtWidgets.QLabel(self.tab_4)
        self.label_8.setGeometry(QtCore.QRect(0, 0, 1200, 160))
        self.label_8.setText("")
        self.label_8.setPixmap(QtGui.QPixmap("NJUPT.jpg"))
        self.label_8.setScaledContents(False)
        self.label_8.setWordWrap(False)
        self.label_8.setIndent(-1)
        self.label_8.setOpenExternalLinks(False)
        self.label_8.setObjectName("label_8")

        # 滚动条
        self.scrollArea_5 = QtWidgets.QScrollArea(self.tab_4)
        self.scrollArea_5.setGeometry(QtCore.QRect(0, 160, 1192, 641))
        self.scrollArea_5.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea_5.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scrollArea_5.setSizeAdjustPolicy(QtWidgets.QAbstractScrollArea.AdjustToContentsOnFirstShow)
        self.scrollArea_5.setWidgetResizable(True)
        self.scrollArea_5.setObjectName("scrollArea_5")
        self.scrollAreaWidgetContents_5 = QtWidgets.QWidget()
        self.scrollAreaWidgetContents_5.setGeometry(QtCore.QRect(0, 0, 1169, 1250))
        self.scrollAreaWidgetContents_5.setMinimumSize(QtCore.QSize(1169, 1250))
        self.scrollAreaWidgetContents_5.setStyleSheet("border-top-color: rgb(0, 85, 255);")
        self.scrollAreaWidgetContents_5.setObjectName("scrollAreaWidgetContents_5")

        #表格下方文本区域，背景色为白
        self.textEdit_3 = QtWidgets.QTextEdit(self.scrollAreaWidgetContents_5)
        self.textEdit_3.setGeometry(QtCore.QRect(0, -10, 1171, 1250))
        self.textEdit_3.setMinimumSize(QtCore.QSize(0, 1250))
        self.textEdit_3.setObjectName("textEdit_3")

        # tableWidget_2表格2，显示得分率、最高分、最低分
        self.tableWidget_2 = QtWidgets.QTableWidget(self.scrollAreaWidgetContents_5)
        self.tableWidget_2.setGeometry(QtCore.QRect(0, 0, 1171, 143))
        self.tableWidget_2.setObjectName("tableWidget_2")
        self.tableWidget_2.setColumnCount(10)
        self.tableWidget_2.setRowCount(3)

        # label_12显示南京邮电大学图
        self.label_12 = QtWidgets.QLabel(self.tab_2)
        self.label_12.setGeometry(QtCore.QRect(0, 30, 291, 121))
        self.label_12.setText("")
        self.label_12.setPixmap(QtGui.QPixmap("TeamINFO.png"))
        self.label_12.setObjectName("label_12")

        # 表格2，3行
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        self.tableWidget_2.setVerticalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setVerticalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setVerticalHeaderItem(2, item)

        # 表格2，10列
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(8, item)
        item = QtWidgets.QTableWidgetItem()
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.setHorizontalHeaderItem(9, item)

        # 表格2属性
        font = QtGui.QFont()
        font.setPointSize(11)
        item.setFont(font)
        item.setTextAlignment(QtCore.Qt.AlignCenter)
        self.tableWidget_2.horizontalHeader().setDefaultSectionSize(110)

        # label_4显示标注，当前有几个学生的分数
        self.label_4 = QtWidgets.QLabel(self.scrollAreaWidgetContents_5)
        self.label_4.setGeometry(QtCore.QRect(10, 150, 1151, 21))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(10)
        self.label_4.setFont(font)
        self.label_4.setStyleSheet("color: rgb(255, 0, 0);")
        self.label_4.setObjectName("label_4")

        # label_5显示分数各区间分布
        self.label_5 = QtWidgets.QLabel(self.scrollAreaWidgetContents_5)
        self.label_5.setGeometry(QtCore.QRect(10, 190, 1151, 500))
        self.label_5.setText("")
        self.label_5.setAlignment(QtCore.Qt.AlignCenter)
        self.label_5.setObjectName("label_5")

        # label_9显示分数正态分布
        self.label_9 = QtWidgets.QLabel(self.scrollAreaWidgetContents_5)
        self.label_9.setGeometry(QtCore.QRect(10, 660, 1151, 500))
        self.label_9.setText("")
        self.label_9.setAlignment(QtCore.Qt.AlignCenter)
        self.label_9.setObjectName("label_9")

        self.scrollArea_5.setWidget(self.scrollAreaWidgetContents_5)

        # pushButton_7更新，分析数据
        self.pushButton_7 = QtWidgets.QPushButton(self.tab_4)
        self.pushButton_7.setGeometry(QtCore.QRect(1100, 120, 91, 41))
        self.pushButton_7.setObjectName("pushButton_7")
        self.pushButton_7.clicked.connect(self.Analys_data)

        # label_10显示队员信息
        self.label_10 = QtWidgets.QLabel(self.tab_4)
        self.label_10.setGeometry(QtCore.QRect(0, 30, 291, 121))
        self.label_10.setText("")
        self.label_10.setPixmap(QtGui.QPixmap("TeamINFO.png"))
        self.label_10.setObjectName("label_10")

        self.tabWidget.addTab(self.tab_4, "")

        # 默认显示标签页一
        mainWindow.setCentralWidget(self.centralwidget)
        self.retranslateUi(mainWindow)
        self.tabWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(mainWindow)

    def retranslateUi(self, mainWindow):
        _translate = QtCore.QCoreApplication.translate
        #主窗口名称
        mainWindow.setWindowTitle(_translate("mainWindow", "学生成绩录入系统————By佟诚、梅青、江斌"))
        #标签页一
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_1), _translate("mainWindow", "读取试卷"))
        self.pushButton.setText(_translate("mainWindow", "选择文件"))
        self.pushButton_5.setText(_translate("mainWindow", "确认"))

        #标签页二
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_2), _translate("mainWindow", "识别分数"))

        #标签页三
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_3), _translate("mainWindow", "查看分数"))
        self.pushButton_3.setText(_translate("mainWindow", "开始"))
        self.pushButton_6.setText(_translate("mainWindow", "更新"))
        #表格1，50行
        item = self.tableWidget.verticalHeaderItem(0)
        item.setText(_translate("mainWindow", "1"))
        item = self.tableWidget.verticalHeaderItem(1)
        item.setText(_translate("mainWindow", "2"))
        item = self.tableWidget.verticalHeaderItem(2)
        item.setText(_translate("mainWindow", "3"))
        item = self.tableWidget.verticalHeaderItem(3)
        item.setText(_translate("mainWindow", "4"))
        item = self.tableWidget.verticalHeaderItem(4)
        item.setText(_translate("mainWindow", "5"))
        item = self.tableWidget.verticalHeaderItem(5)
        item.setText(_translate("mainWindow", "6"))
        item = self.tableWidget.verticalHeaderItem(6)
        item.setText(_translate("mainWindow", "7"))
        item = self.tableWidget.verticalHeaderItem(7)
        item.setText(_translate("mainWindow", "8"))
        item = self.tableWidget.verticalHeaderItem(8)
        item.setText(_translate("mainWindow", "9"))
        item = self.tableWidget.verticalHeaderItem(9)
        item.setText(_translate("mainWindow", "10"))
        item = self.tableWidget.verticalHeaderItem(10)
        item.setText(_translate("mainWindow", "11"))
        item = self.tableWidget.verticalHeaderItem(11)
        item.setText(_translate("mainWindow", "12"))
        item = self.tableWidget.verticalHeaderItem(12)
        item.setText(_translate("mainWindow", "13"))
        item = self.tableWidget.verticalHeaderItem(13)
        item.setText(_translate("mainWindow", "14"))
        item = self.tableWidget.verticalHeaderItem(14)
        item.setText(_translate("mainWindow", "15"))
        item = self.tableWidget.verticalHeaderItem(15)
        item.setText(_translate("mainWindow", "16"))
        item = self.tableWidget.verticalHeaderItem(16)
        item.setText(_translate("mainWindow", "17"))
        item = self.tableWidget.verticalHeaderItem(17)
        item.setText(_translate("mainWindow", "18"))
        item = self.tableWidget.verticalHeaderItem(18)
        item.setText(_translate("mainWindow", "19"))
        item = self.tableWidget.verticalHeaderItem(19)
        item.setText(_translate("mainWindow", "20"))
        item = self.tableWidget.verticalHeaderItem(20)
        item.setText(_translate("mainWindow", "21"))
        item = self.tableWidget.verticalHeaderItem(21)
        item.setText(_translate("mainWindow", "22"))
        item = self.tableWidget.verticalHeaderItem(22)
        item.setText(_translate("mainWindow", "23"))
        item = self.tableWidget.verticalHeaderItem(23)
        item.setText(_translate("mainWindow", "24"))
        item = self.tableWidget.verticalHeaderItem(24)
        item.setText(_translate("mainWindow", "25"))
        item = self.tableWidget.verticalHeaderItem(25)
        item.setText(_translate("mainWindow", "26"))
        item = self.tableWidget.verticalHeaderItem(26)
        item.setText(_translate("mainWindow", "27"))
        item = self.tableWidget.verticalHeaderItem(27)
        item.setText(_translate("mainWindow", "28"))
        item = self.tableWidget.verticalHeaderItem(28)
        item.setText(_translate("mainWindow", "29"))
        item = self.tableWidget.verticalHeaderItem(29)
        item.setText(_translate("mainWindow", "30"))
        item = self.tableWidget.verticalHeaderItem(30)
        item.setText(_translate("mainWindow", "31"))
        item = self.tableWidget.verticalHeaderItem(31)
        item.setText(_translate("mainWindow", "32"))
        item = self.tableWidget.verticalHeaderItem(32)
        item.setText(_translate("mainWindow", "33"))
        item = self.tableWidget.verticalHeaderItem(33)
        item.setText(_translate("mainWindow", "34"))
        item = self.tableWidget.verticalHeaderItem(34)
        item.setText(_translate("mainWindow", "35"))
        item = self.tableWidget.verticalHeaderItem(35)
        item.setText(_translate("mainWindow", "36"))
        item = self.tableWidget.verticalHeaderItem(36)
        item.setText(_translate("mainWindow", "37"))
        item = self.tableWidget.verticalHeaderItem(37)
        item.setText(_translate("mainWindow", "38"))
        item = self.tableWidget.verticalHeaderItem(38)
        item.setText(_translate("mainWindow", "39"))
        item = self.tableWidget.verticalHeaderItem(39)
        item.setText(_translate("mainWindow", "40"))
        item = self.tableWidget.verticalHeaderItem(40)
        item.setText(_translate("mainWindow", "41"))
        item = self.tableWidget.verticalHeaderItem(41)
        item.setText(_translate("mainWindow", "42"))
        item = self.tableWidget.verticalHeaderItem(42)
        item.setText(_translate("mainWindow", "43"))
        item = self.tableWidget.verticalHeaderItem(43)
        item.setText(_translate("mainWindow", "44"))
        item = self.tableWidget.verticalHeaderItem(44)
        item.setText(_translate("mainWindow", "45"))
        item = self.tableWidget.verticalHeaderItem(45)
        item.setText(_translate("mainWindow", "46"))
        item = self.tableWidget.verticalHeaderItem(46)
        item.setText(_translate("mainWindow", "47"))
        item = self.tableWidget.verticalHeaderItem(47)
        item.setText(_translate("mainWindow", "48"))
        item = self.tableWidget.verticalHeaderItem(48)
        item.setText(_translate("mainWindow", "49"))
        item = self.tableWidget.verticalHeaderItem(49)
        item.setText(_translate("mainWindow", "50"))

        #表格1，12列
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("mainWindow", "学号"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("mainWindow", "一"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("mainWindow", "二"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("mainWindow", "三"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("mainWindow", "四"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("mainWindow", "五"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("mainWindow", "六"))
        item = self.tableWidget.horizontalHeaderItem(7)
        item.setText(_translate("mainWindow", "七"))
        item = self.tableWidget.horizontalHeaderItem(8)
        item.setText(_translate("mainWindow", "八"))
        item = self.tableWidget.horizontalHeaderItem(9)
        item.setText(_translate("mainWindow", "九"))
        item = self.tableWidget.horizontalHeaderItem(10)
        item.setText(_translate("mainWindow", "总分"))
        item = self.tableWidget.horizontalHeaderItem(11)
        item.setText(_translate("mainWindow", "排名"))

        __sortingEnabled = self.tableWidget.isSortingEnabled()
        self.tableWidget.setSortingEnabled(False)
        self.tableWidget.setSortingEnabled(__sortingEnabled)


        #标签页四
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_4), _translate("mainWindow", "分析数据"))
        self.pushButton_7.setText(_translate("mainWindow", "更新"))
        self.label_4.setText(_translate("mainWindow", "注：当前有0个学生的分数。   "))
        #表格2，3行
        item = self.tableWidget_2.verticalHeaderItem(0)
        item.setText(_translate("mainWindow", "得分率"))
        item = self.tableWidget_2.verticalHeaderItem(1)
        item.setText(_translate("mainWindow", "最高分"))
        item = self.tableWidget_2.verticalHeaderItem(2)
        item.setText(_translate("mainWindow", "最低分"))
        #表格2，10列
        item = self.tableWidget_2.horizontalHeaderItem(0)
        item.setText(_translate("mainWindow", "一"))
        item = self.tableWidget_2.horizontalHeaderItem(1)
        item.setText(_translate("mainWindow", "二"))
        item = self.tableWidget_2.horizontalHeaderItem(2)
        item.setText(_translate("mainWindow", "三"))
        item = self.tableWidget_2.horizontalHeaderItem(3)
        item.setText(_translate("mainWindow", "四"))
        item = self.tableWidget_2.horizontalHeaderItem(4)
        item.setText(_translate("mainWindow", "五"))
        item = self.tableWidget_2.horizontalHeaderItem(5)
        item.setText(_translate("mainWindow", "六"))
        item = self.tableWidget_2.horizontalHeaderItem(6)
        item.setText(_translate("mainWindow", "七"))
        item = self.tableWidget_2.horizontalHeaderItem(7)
        item.setText(_translate("mainWindow", "八"))
        item = self.tableWidget_2.horizontalHeaderItem(8)
        item.setText(_translate("mainWindow", "九"))
        item = self.tableWidget_2.horizontalHeaderItem(9)
        item.setText(_translate("mainWindow", "总分"))

