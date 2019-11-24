#-*- coding:utf-8 -*-
import copy
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import matplotlib.figure
import math
import random

def proportion(data_list):

    total = []
    for data in data_list:
        total.append(data[-1])
    total_0_59 = 0
    total_60_70 = 0
    total_70_80 = 0
    total_80_90 = 0
    total_90_100 = 0
    for i in total:
        if i < 60:
            total_0_59 += 1
        elif i >= 60 and i < 70:
            total_60_70 += 1
        elif i >= 70 and i < 80:
            total_70_80 += 1
        elif i >= 80 and i < 90:
            total_80_90 += 1
        else:
            total_90_100 += 1
    total_sort = [total_0_59, total_60_70, total_70_80, total_80_90, total_90_100]
    print(total_sort)
    fig1 = plt.figure()
    plt.rcParams['font.sans-serif'] = ['SimHei']
    plt.rcParams['axes.unicode_minus'] = False
    # total_sort_labels = ["A", "B", "C", "D", "E"]
    plt.pie(total_sort, explode=[0, 0, 0, 0, 0.1],  autopct='%1.1f%%', shadow=True,
            startangle=90)
    total_sort_labels = ["60分以下","60～70分","70～80分","80～90分","90～100分"]
    plt.legend(total_sort_labels, loc = "lower right", ncol = 2)
    plt.title("分数各区间分布",fontsize=16)
    plt.savefig("1.jpg")
    plt.close()
    return total
#正态分布
def normal_distribution(x,mu,sigma):
    a = -(x-mu)**2
    b = 2*sigma**2
    c = sigma*math.sqrt(2*math.pi)
    y = (1/c)*math.e**(a/b)
    return y

def distribution(total):
    fig2 = plt.figure()
    plt.rcParams['font.sans-serif'] = ['SimHei']
    plt.rcParams['axes.unicode_minus'] = False
    Mean = np.mean(total)
    Std = np.std(total)
    num_bins = 10
    n,bins,patches = plt.hist(total,num_bins,density=True)
    y = normal_distribution(bins,Mean,Std)
    # plt.text(45, 0.065, '平均值为{}'.format(round(Mean,3)),fontsize=12,color="red")
    # plt.text(45, 0.06, '标准差为{}'.format(round(Std,3)),fontsize=12,color="red")
    plt.title("分数正态分布",fontsize=16)
    plt.plot(bins,y,"r--",color="red")
    plt.savefig("2.jpg")
    plt.close()
# data_list = [[8, 7, 6, 6, 8, 9, 7, 9, 11, 71],[8, 6, 10, 9, 10, 6, 10, 7, 17, 83],[10, 5, 9, 10, 1, 6, 4, 10, 13, 68]]
#
# proportion(data_list)
