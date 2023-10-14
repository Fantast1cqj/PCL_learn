#include <iostream>
// io 相关函数头文件
#include <pcl/io/pcd_io.h>
// 定义了 point 类型
#include <pcl/point_types.h>

int main(int argc,char** argv)
{
    // 智能指针，自动释放 变量名为cloud 类型为pcl::PointCloud<pcl::PointXYZ
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);

    // 读取某个文件 两个参数：文件名 点云变量
    // 读取成功：返回 0
    // 无法打开或解析 PCD 文件，则返回 -1
    // 在读取 PCD 文件的过程中发生其他错误或异常，则返回 -2
    if(pcl::io::loadPCDFile<pcl::PointXYZ>("test_pcd.pcd",*cloud)==-1)
    {
        PCL_ERROR("Couldn't read file test_pcd.pcd\n");
        return(-1);
    }
    std::cout << "Loaded " << cloud->width*cloud->height << " data points from test_pcd.pcd with the following fields: " <<std::endl;
    for(size_t i=0; i < cloud->points.size(); ++i)
    {
        std::cout <<"    " << cloud->points[i].x <<" " << cloud->points[i].y << " " << cloud->points[i].z << std::endl;
    }
    
    return(0);
}
