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
    
    for(auto& point: cloud)
    {
        point.x = 1024 * rand () / (RAND_MAX + 1.0f);
        point.y = 1024 * rand () / (RAND_MAX + 1.0f);
        point.z = 1024 * rand () / (RAND_MAX + 1.0f);
    }
    //pcl::io::savePCDFileASCII("test_pcd.pcd", cloud);
    pcl::io::savePCDFile("test_pcd.pcd", cloud);
    std::cout << "Done.\n";
    std::cout << "Saved " << cloud.size() << " data points to test_pcd.pcd." << std::endl;

    for (const auto &point : cloud)
        std::cout << "    " << point.x << " " << point.y << " " << point.z << std::endl;

    return 0;
}