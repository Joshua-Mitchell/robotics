int argc = 0; static char *argv[1];
std::string node_name="blindturtlebot";
char * cstr = new char [node_name.length()+1];
std::strcpy (cstr, node_name.c_str());
argv[0]= cstr;

ros::init(argc, argv, "blindturtlebot");
n=new ros::NodeHandle();
msg= new  geometry_msgs::Twist();

chatter_pub = n->advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);

msg->linear.x = 0.0;
msg->linear.y = 0.0;
msg->linear.z = 0.0;

msg->angular.x = 0.0;
msg->angular.y = 0.0;
msg->angular.z = 0.0;
