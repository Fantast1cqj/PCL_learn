#include "iostream"
#include "pcl/io/pcd_io.h"
#include "pcl/point_types.h"


int main(int argc,char** argv)
{
    pcl::PointCloud<pcl::PointXYZ>cloud;
    // 数据集宽度
    cloud.width = 5;
    // 数据集无组织
    cloud.height = 1;
    // 点的XYZ可以包含 Inf 和 NaN
    cloud.is_dense  = false;
    cloud.resize(cloud.width * cloud.height);
    
    // auto& point 声明一个引用变量point，指向当前循环迭代所指向的点
    for(auto& point: cloud)
    {
        // 在0-RAND_MAX中生成一个随机数，除以(RAND_MAX + 1.0f)归一化，乘以1024到0-1024区间
        point.x = 1024 * rand () / (RAND_MAX + 1.0f);
        point.y = 1024 * rand () / (RAND_MAX + 1.0f);
        point.z = 1024 * rand () / (RAND_MAX + 1.0f);
    }
    //pcl::io::savePCDFileASCII("test_pcd.pcd", cloud);
    pcl::io::savePCDFile("test_pcd_1.pcd", cloud);
    std::cout << "Done.\n";
    std::cout << "Saved " << cloud.size() << " data points to test_pcd.pcd." << std::endl;

    // const 不改变指针值                                    
    for (const auto &point : cloud)
        std::cout << "    " << point.x << " " << point.y << " " << point.z << std::endl;

    return 0;
}