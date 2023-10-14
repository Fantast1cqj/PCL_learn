# include "iostream"
# include "pcl/io/pcd_io.h"
# include "pcl/point_types.h"
int main(int argc, char** argv)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud1 (new pcl::PointCloud<pcl::PointXYZ>);
    switch (pcl::io::loadPCDFile<pcl::PointXYZ>("test_pcd.pcd", *cloud1))
    {
    case 0:
        std::cout << "读取成功\n" << std::endl;
        break;
    case -1:
        std::cout << "未读取到文件\n" << std::endl;
        return -1;
    case -2:
        std::cout << "PCD文件内部出错\n" << std::endl;
        return -2;
    default:
        break;
    }

}