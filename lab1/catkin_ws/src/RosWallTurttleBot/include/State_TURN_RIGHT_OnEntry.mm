msg->linear.x = 0.0;
msg->angular.z = -2.0;

chatter_pub.publish(*msg);

ros::spinOnce();
