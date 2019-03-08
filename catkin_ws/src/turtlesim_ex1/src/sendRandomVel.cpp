#include <time.h>
#include <stdlib.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"



int main(int argc, char **argv) {
    ros::init(argc, argv, "RandomVelocity");

    ros::NodeHandle node;

    ros::Publisher vel_pub = node.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);

    ros::Rate loop_rate(1);

    int count = 0;

    srand(time(NULL));
    //float r = rand()
    while(ros::ok()){
        geometry_msgs::Twist vel_msg;

        vel_msg.linear.x = (double)(rand() % 10 + 1)/4.0;
        vel_msg.linear.y = 0;
        vel_msg.linear.z = 0;

        vel_msg.angular.x = 0;
        vel_msg.angular.y = 0;
        vel_msg.angular.z = (double)(rand() % 10 - 5) / 2.0;

        ROS_INFO("[Random Walk] Linear.x = %.2f, angular.z = %.2f\n", vel_msg.linear.x, vel_msg.angular.z);

        vel_pub.publish(vel_msg);
        ros::spinOnce();

        loop_rate.sleep();
        count++;


    }
    return 0;
}