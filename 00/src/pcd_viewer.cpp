/**************** 点云可视化 ****************/
# include <iostream>
# include <pcl/point_cloud.h>
# include <pcl/io/pcd_io.h>
# include <pcl/point_types.h>

#include <thread>
#include <pcl/visualization/cloud_viewer.h>


using namespace std::this_thread;
using namespace std::chrono;
// 简单的可视化函数
void cloud_viewer_simple (pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud)
{
    // CloudViewer 类不适合在多线程应用程序中使用！
    pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");
    viewer.showCloud (cloud);
    while (!viewer.wasStopped ())
    {

    }
}

// 使用 PCLVisualizer 可视化
void cloud_viewer (pcl::PointCloud<pcl::PointXYZRGB>::ConstPtr cloud, u_int8_t mod)
{
    pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Viewer"));
    switch (mod)
    {
        case 0:
        {
            //---------------------------------------
            //--------- 简单可视化 (点云rgb) ----------
            //---------------------------------------
        
            viewer -> setBackgroundColor(255, 255, 255);               // 设置背景颜色 白色
            pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(cloud);   // 创建一个点云颜色处理器
            viewer -> addPointCloud<pcl::PointXYZRGB>(cloud, rgb, "milk");  // 加载点云文件，点云名为 milk
            viewer -> setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "milk");   // 设置点云渲染属性，将"milk" 点云的点大小设置为1
            viewer -> addCoordinateSystem (0.1);            // 窗口中添加一个大小为 0.1 的坐标系，默认原点 (0, 0, 0)
            viewer -> initCameraParameters ();              // 初始化相机参数 相机参数包括相机位置等
            while (!viewer -> wasStopped ())
            {
                // viewer -> spinOnce();
                viewer -> spinOnce (10);             // 响应用户的交互操作
                std::this_thread::sleep_for(10ms);   // 窗口 10 ms 刷新一次
            }
            break;
        }
        case 1:
        {
            //---------------------------------------
            //----------- Custom colours ------------
            //---------------------------------------
            viewer -> setBackgroundColor(0, 0, 0);
            pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZRGB> single_color(cloud, 0, 255, 0);  // 设置点云颜色
            viewer -> addPointCloud<pcl::PointXYZRGB> (cloud, single_color, "sample cloud");
            viewer -> setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
            viewer -> addCoordinateSystem (0.1);
            viewer -> initCameraParameters ();
            while (!viewer -> wasStopped ())
            {
                // viewer -> spinOnce();
                viewer -> spinOnce (10);             // 响应用户的交互操作
                std::this_thread::sleep_for(10ms);   // 窗口 10 ms 刷新一次
            }
            break;
        }
        case 3:
        {
            //---------------------------------------
            //--------------- 绘制图形 ----------------
            //---------------------------------------

            //viewer->addLine<pcl::PointXYZRGB> ((*cloud)[0],
            //                         (*cloud)[cloud->size() - 1], "line");
            //viewer->addSphere ((*cloud)[0], 0.2, 0.5, 0.5, 0.0, "sphere");
            break;
        }

        default:
            break;
    }
}

void cloud_viewer (pcl::PointCloud<pcl::PointXYZRGB>::ConstPtr cloud, pcl::PointCloud<pcl::Normal>::ConstPtr normals,u_int8_t mod)
{
    //---------------------------------------
    //----------- normals 点云法线 -----------
    //---------------------------------------
    if(mod == 2)
    {
        pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Viewer"));

        viewer -> setBackgroundColor(0, 0, 0);
        pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(cloud);
        viewer -> addPointCloud<pcl::PointXYZRGB> (cloud, rgb, "sample cloud");
        viewer -> setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 3, "sample cloud");

        viewer -> addPointCloudNormals<pcl::PointXYZRGB, pcl::Normal> (cloud, normals, 10, 0.05, "normals");    // 设置点云法线

        viewer -> addCoordinateSystem (1.0);
        viewer -> initCameraParameters ();

        while (!viewer -> wasStopped ())
        {
            viewer -> spinOnce (10);             // 响应用户的交互操作
            std::this_thread::sleep_for(10ms);   // 窗口 10 ms 刷新一次
        }
    }
    else
    {
        std::cout << "cloud viewer mod error !!!" << std::endl;
        PCL_ERROR ("cloud viewer mod error !!! \n");
    }
}

int main(int argc, char** argv)
{

    pcl::PCLPointCloud2 cloud_binary;
    if( pcl::io::loadPCDFile("milk.pcd", cloud_binary) == -1)
    {
        std::cout << "找不到 pcd 文件" << std::endl;
        return -1;
    }
    

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_milk (new pcl::PointCloud<pcl::PointXYZRGB>);
    pcl::fromPCLPointCloud2(cloud_binary, *cloud_milk);

    // cloud_viewer_simple(cloud_milk);
    cloud_viewer(cloud_milk, 1);


    return 0;
}