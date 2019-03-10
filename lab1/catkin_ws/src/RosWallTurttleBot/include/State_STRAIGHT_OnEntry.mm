msg->linear.x = 2.0;
msg->angular.z = 0.0;

chatter_pub.publish(*msg);
