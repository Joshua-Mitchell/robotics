std_msgs::String msg;

std::stringstream ss;
ss << "hello world " << count;
msg.data = ss.str();

ROS_INFO("%s", msg.data.c_str());

chatter_pub.publish(msg);
