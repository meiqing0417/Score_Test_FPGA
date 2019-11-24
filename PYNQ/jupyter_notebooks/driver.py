from pynq import Overlay
import numpy as np
from pynq import Xlnk
import struct

K=8

def Disp_Feature(feature):
    for i in range(np.shape(feature)[0]):
        for j in range(np.shape(feature)[1]):
            for k in range(np.shape(feature)[2]):
                for l in range(np.shape(feature)[3]):
                    if(feature[i][j][k][l]!=0):
                        print("out[%d,%d,%d,%d]=%d"%(i,j,k,l,feature[i][j][k][l]));

def Disp_Weight(weight):
    for i in range(np.shape(weight)[0]):
        for j in range(np.shape(weight)[1]):
            for k in range(np.shape(weight)[2]):
                for l in range(np.shape(weight)[3]):
                    for m in range(np.shape(weight)[4]):
                        print("out[%d,%d,%d,%d,%d]=%d"%(i,j,k,l,m,weight[i][j][k][l][m]));

def Load_Weight_From_File(weight,file):
    with open(file,'rb') as fp:
        for i in range(np.shape(weight)[0]):
            for j in range(np.shape(weight)[1]):
                for k in range(np.shape(weight)[2]):
                    for l in range(np.shape(weight)[3]):
                        for m in range(np.shape(weight)[4]):
                            dat=fp.read(2)
                            a=struct.unpack("h",dat)
                            #print(a[0])
                            weight[i][j][k][l][m]=a[0]

def Run_Pool(pool,dma,ch,kx,ky,feature_in,feature_out):
    pool.write(0x10,(ch+K-1)//K);
    pool.write(0x18,feature_in.shape[1])
    pool.write(0x20,feature_in.shape[2])
    pool.write(0x28,feature_out.shape[1])
    pool.write(0x30,feature_out.shape[2])
    pool.write(0x38,kx)
    pool.write(0x40,ky)
    #print("start");
    pool.write(0, (pool.read(0)&0x80)|0x01 ) #start pool IP
    dma.recvchannel.transfer(feature_out)
    dma.sendchannel.transfer(feature_in)
    dma.sendchannel.wait();
    #print("send done")
    dma.recvchannel.wait()
    #print("recv done")
    tp=pool.read(0)
    while not((tp>>1)&0x1):
        tp=pool.read(0)
    #print("pool ip done")

def Run_Conv(conv,chin,chout,kx,ky,sx,sy,mode,relu_en,feature_in,feature_in_precision,weight,weight_precision,feature_out,feature_out_precision):
    conv.write(0x10,chin)
    conv.write(0x18,feature_in.shape[1])
    conv.write(0x20,feature_in.shape[2])
    conv.write(0x28,chout)
    conv.write(0x30,kx)
    conv.write(0x38,ky)
    conv.write(0x40,sx)
    conv.write(0x48,sy)
    conv.write(0x50,mode)
    conv.write(0x58,relu_en)
    conv.write(0x60,feature_in.physical_address)
    conv.write(0x68,feature_in_precision)
    conv.write(0x70,weight.physical_address)
    conv.write(0x78,weight_precision)
    conv.write(0x80,feature_out.physical_address)
    conv.write(0x88,feature_out_precision)
    #print("conv ip start")
    conv.write(0, (conv.read(0)&0x80)|0x01 ) #start pool IP
    #poll the done bit
    tp=conv.read(0)
    while not((tp>>1)&0x1):
        tp=conv.read(0)
    #print("conv ip done")
    
def Run_Conv_Soft(chin,chout,kx,ky,sx,sy,mode,relu_en,feature_in,feature_in_precision,weight,weight_precision,feature_out,feature_out_precision):
    if(mode==0):
        pad_x=0
        pad_y=0
    else:
        pad_x=(kx-1)//2
        pad_y=(ky-1)//2       
    for i in range(chout):
        for j in range(feature_out.shape[1]):
            for k in range(feature_out.shape[2]):
                sum=np.int64(0)
                for c in range(chin):
                    for ii in range(ky):
                        for jj in range(kx):
                            row=j*sy-pad_y+ii
                            col=k*sx-pad_x+jj
                            if not (row<0 or col<0 or row>=feature_in.shape[1] or col>=feature_in.shape[2]):
                                dat=feature_in[c//K][row][col][c%K]
                                wt=weight[i][ii][jj][c//K][c%K]
                                #print("%d %d=%d, wt=%d "%(row,col,dat,wt))
                                sum=sum+int(dat)*int(wt)
                res=sum>>(feature_in_precision+weight_precision-feature_out_precision)
                if(res>32767):
                    res=32767
                else:
                    if(res<-32768):
                        res=32768
                feature_out[i//K][j][k][i%K]=res