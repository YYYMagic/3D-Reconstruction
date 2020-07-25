# 3D-Reconstruction


## 依赖包：
Ubuntu 14.04, 15.04 or 16.04 (Though many other linux distros will work fine)

CMake

OpenGL

CUDA >= 7.0

OpenNI2

SuiteSparse

Eigen

zlib

libjpeg

Pangolin

PCL

## 源文件功能说明：
procimg包：获取zed的双目RGB以及深度图像，保存在本地

procimg2包：获取zed的双目RGB以及深度图像，保存在本地，与上面包的储存格式不同

cloud2pcd：将.ply格式点云转换成.pcd格式点云

ElasticFusion：三维重建非实时实现（原版ElasticFusion）

ElasticFusion-yyy：三维重建实时实现（改造后的ElasticFusion）

ply2pcd：将.ply格式文件转化为.pcd格式文件

reg：点云配准

RGBDConverter：将双目图像和深度图转化为ElasticFusion可以直接读取的.klg格式文件

rotate：点云的旋转平移

## 使用说明：
进入entry文件夹，这里存放所有的运行脚本。

runoffline.sh 运行非实时三维重建

runonline.sh 运行实时三维重建

runbag.sh 运行key.bag

record.sh 录制zed节点为rosbag

rotate.sh 点云旋转

peizhun.sh 点云配准

stop.sh 停止三维重建
