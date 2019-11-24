from PyQt5.QtWidgets import *
from PyQt5 import QtCore, QtGui, QtWidgets
from final_stu import *
import sys


class MyMain(QtWidgets.QMainWindow,Ui_mainWindow):#QWidget是因为创建的是QWidget类，Ui_Form创建窗口Form的objectName
    def __init__(self):
        super(MyMain, self).__init__()

        self.setupUi(self)

if __name__ =="__main__":
    app = QApplication(sys.argv)
    main = MyMain()
    main.show()#显示窗口
    sys.exit(app.exec_())


