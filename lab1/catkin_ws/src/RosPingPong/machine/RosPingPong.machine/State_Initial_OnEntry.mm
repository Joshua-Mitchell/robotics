int argc = 0;   static  char *argv[1]; 
std::string node_name="pingpong"; char * cstr = new char [node_name.length()+1];
std::strcpy (cstr, node_name.c_str());
argv[0]= cstr; 

ros::init(argc, argv, "pingpong");
n=new ros::NodeHandle();

chatter_pub = n->advertise<std_msgs::String>("pinpong", 1000);

count = 0;
