//main.cpp
#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/point_types.h>

using namespace pcl;
using namespace pcl::io;

int main (int argc, char** argv)
{

	pcl::PCLPointCloud2 clod;
	pcl::PLYReader reader;
	reader.read("/home/yyy/peizhun/key2.ply", clod);
	pcl::PCDWriter writer;
	writer.writeASCII("/home/yyy/peizhun/key2.pcd", clod); 
  return 0;
}

