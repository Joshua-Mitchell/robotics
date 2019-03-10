#!/bin/bash 
# (c) Vlad Estivill-Castro
# seting up a clfsm amchine for catkin
echo -e "\n(c)-2014 Vlad Estivill-castro\n"
echo -e "Set up for " $1 "on" $(date +"%x %r %Z\n") 
#
# Do we have the .machine in the input
machineName=$1
if [ "$machineName" != "${machineName/machine/}" ]; then
	#echo "extension provided"
machineExtension=$(echo $machineName | sed "s?/??" )
else
	#echo "appending extension"
	machineExtension=$1".machine"
fi
machineName=$(echo $machineExtension | sed "s/\.machine//" )
########## We have the machineName and the machineEstension
UNAME_S=$(uname -s)
UNAME_M=$(uname -m)
thePrefix="lib"
    realtive_catkin_destiantion="../../../devel" 
    catkin_destination=$(pwd)"/$realtive_catkin_destiantion/lib"
    echo "The destination will become $catkin_destination"
##############
if [ -d $machineExtension ]; then
    echo -e "Machine *>" $machineExtension "<* found. Things are fine.\n\n" 
    outputCMakeLists=Suggested_CMakeLists_$machineName.txt
    echo -e "See\n $outputCMakeLists\n\n"
    destination=$catkin_destination/$machineExtension/${UNAME_S}-${UNAME_M}
    ############################ create the directory for execution
    if [ -d $destination ]; then
	    echo -e "Destination $destination exists\n"
    else
	    echo -e "Creating destination $destination \n"
	    mkdir -p $destination
    fi
    ########
    # copy include files
    echo "re-creating ../include and ../sec"
    mkdir -p ../include
    mkdir -p ../src
    cp $machineExtension/*.h ../include
    cp $machineExtension/*.expr ../include
    cp $machineExtension/*VarRefs.mm ../include
    cp $machineExtension/*OnEntry.mm ../include
    cp $machineExtension/*OnExit.mm ../include
    cp $machineExtension/*Internal.mm ../include
    echo "Your CMakeLists.txt needs : find_package(catkin REQUIRED COMPONENTS clfsm libclfsm)" 
    #
    echo "cmake_minimum_required(VERSION 2.8.3)" >  $outputCMakeLists
    echo "project("$machineName")" >> $outputCMakeLists
    echo "">> $outputCMakeLists
    echo "## Find catkin macros and libraries" >> $outputCMakeLists
    echo "## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)" >> $outputCMakeLists
    echo "## is used, also find other catkin packages" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "find_package(catkin REQUIRED COMPONENTS" >> $outputCMakeLists
    echo "  clfsm" >> $outputCMakeLists
    echo "  libclfsm" >> $outputCMakeLists
    echo ")" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## System dependencies are found with CMake's conventions" >> $outputCMakeLists
    echo "# find_package(Boost REQUIRED COMPONENTS system)" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Uncomment this if the package has a setup.py. This macro ensures" >> $outputCMakeLists
    echo "## modules and global scripts declared therein get installed" >> $outputCMakeLists
    echo "## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html" >> $outputCMakeLists
    echo "# catkin_python_setup()" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "################################################" >> $outputCMakeLists
    echo "## Declare ROS messages, services and actions ##" >> $outputCMakeLists
    echo "################################################" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## To declare and build messages, services or actions from within this" >> $outputCMakeLists
    echo "## package, follow these steps:" >> $outputCMakeLists
    echo "## * Let MSG_DEP_SET be the set of packages whose message types you use in" >> $outputCMakeLists
    echo "##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...)." >> $outputCMakeLists
    echo "## * In the file package.xml:" >> $outputCMakeLists
    echo "##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET" >> $outputCMakeLists
    echo "##   * If MSG_DEP_SET isn't empty the following dependencies might have been" >> $outputCMakeLists
    echo "##     pulled in transitively but can be declared for certainty nonetheless:" >> $outputCMakeLists
    echo "##     * add a build_depend tag for \"message_generation\"" >> $outputCMakeLists
    echo "##     * add a run_depend tag for \"message_runtime\"" >> $outputCMakeLists
    echo "## * In this file (CMakeLists.txt):" >> $outputCMakeLists
    echo "##   * add \"message_generation\" and every package in MSG_DEP_SET to" >> $outputCMakeLists
    echo "##     find_package(catkin REQUIRED COMPONENTS ...)" >> $outputCMakeLists
    echo "##   * add \"message_runtime\" and every package in MSG_DEP_SET to" >> $outputCMakeLists
    echo "##     catkin_package(CATKIN_DEPENDS ...)" >> $outputCMakeLists
    echo "##   * uncomment the add_*_files sections below as needed" >> $outputCMakeLists
    echo "##     and list every .msg/.srv/.action file to be processed" >> $outputCMakeLists
    echo "##   * uncomment the generate_messages entry below" >> $outputCMakeLists
    echo "##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "## Generate messages in the 'msg' folder" >> $outputCMakeLists
    echo "# add_message_files(" >> $outputCMakeLists
    echo "#   FILES" >> $outputCMakeLists
    echo "#   Message1.msg" >> $outputCMakeLists
    echo "#   Message2.msg" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "## Generate services in the 'srv' folder" >> $outputCMakeLists
    echo "# add_service_files(" >> $outputCMakeLists
    echo "#   FILES" >> $outputCMakeLists
    echo "#   Service1.srv" >> $outputCMakeLists
    echo "#   Service2.srv" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "## Generate actions in the 'action' folder" >> $outputCMakeLists
    echo "# add_action_files(" >> $outputCMakeLists
    echo "#   FILES" >> $outputCMakeLists
    echo "#   Action1.action" >> $outputCMakeLists
    echo "#   Action2.action" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "## Generate added messages and services with any dependencies listed here" >> $outputCMakeLists
    echo "# generate_messages(" >> $outputCMakeLists
    echo "#   DEPENDENCIES" >> $outputCMakeLists
    echo "#   std_msgs" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    echo "Your CMakeLists.txt needs : catkin_package( LIBRARIES  $thePrefix$machineName )"
    echo "###################################" >> $outputCMakeLists
    echo "## catkin specific configuration ##" >> $outputCMakeLists
    echo "###################################" >> $outputCMakeLists
    echo "## The catkin_package macro generates cmake config files for your package" >> $outputCMakeLists
    echo "## Declare things to be passed to dependent projects" >> $outputCMakeLists
    echo "## INCLUDE_DIRS: uncomment this if you package contains header files" >> $outputCMakeLists
    echo "## LIBRARIES: libraries you create in this project that dependent projects also need" >> $outputCMakeLists
    echo "## CATKIN_DEPENDS: catkin_packages dependent projects also need" >> $outputCMakeLists
    echo "## DEPENDS: system dependencies of this project that dependent projects also need" >> $outputCMakeLists
    echo "catkin_package(" >> $outputCMakeLists
    echo "#  INCLUDE_DIRS include" >> $outputCMakeLists
    echo "LIBRARIES $thePrefix$machineName" >> $outputCMakeLists
    echo "#  CATKIN_DEPENDS clfsm libclfsm roscpp std_msgs" >> $outputCMakeLists
    echo "#  DEPENDS system_lib" >> $outputCMakeLists
    echo ")" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    #
    #
    echo "Your CMakeLists.txt needs : " 'set(CMAKE_CXX_FLAGS "-std=c++11 ")'
    echo "Your CMakeLists.txt needs : "'set(CMAKE_SHARED_LINKER_FLAGS "-Wl,-rpath -Wl,${CMAKE_INSTALL_PREFIX}/lib")'
    echo "###########" >> $outputCMakeLists
    echo "## Build ##"  >> $outputCMakeLists
    echo "###########" >> $outputCMakeLists
    echo 'set(CMAKE_CXX_FLAGS "-std=c++11 ")' >> $outputCMakeLists
    echo 'set(CMAKE_SHARED_LINKER_FLAGS "-Wl,-rpath -Wl,${CMAKE_INSTALL_PREFIX}/lib")' >> $outputCMakeLists
    #
    echo "Your CMakeLists.txt needs : include_directories(include)"
    echo 'Your CMakeLists.txt needs : include_directories(${libclfsm_INCLUDE_DIRS})'
    echo 'Your CMakeLists.txt needs : include_directories(${clfsm_INCLUDE_DIRS})'
    echo "include_directories(include)" >> $outputCMakeLists
    echo 'include_directories(${libclfsm_INCLUDE_DIRS})' >> $outputCMakeLists
    echo 'include_directories(${clfsm_INCLUDE_DIRS})' >>  $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    ########
    echo "## Specify additional locations of header files" >> $outputCMakeLists
    echo "## Your package locations should be listed before other locations" >> $outputCMakeLists
    echo "# include_directories(include)" >> $outputCMakeLists
    echo "include_directories(" >> $outputCMakeLists
    echo "  \${catkin_INCLUDE_DIRS}" >> $outputCMakeLists
    echo ")" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    ########
    echo "## Declare a cpp library" >>  $outputCMakeLists
    echo "# add_library("$machineName >> $outputCMakeLists
    echo "#   src/\${PROJECT_NAME}/"$machineName".cpp" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    # copy source files files
    #first the machine
    cp $machineExtension/$machineName.mm ../src
    linkForMachine="add_library($thePrefix$machineName\n"
    ###### loop over the machine's states
    lineNum=1
    stateName=$(sed -n "${lineNum}p" $machineExtension/States)
    filenameForState=State_$stateName.mm
    while [ -f $machineExtension/$filenameForState ]; do
       echo  "Procesing state :" $stateName
       echo "Your CMakeLists.txt needs : add_library(${machineName}_State_"$stateName" OBJECT src/"$filenameForState  ")"
       echo "add_library(${machineName}_State_"$stateName" OBJECT src/"$filenameForState  ")"  >>  $outputCMakeLists
       cp $machineExtension/$filenameForState ../src
       linkForMachine=$linkForMachine'$<TARGET_OBJECTS:'"${machineName}_State_$stateName>\n"
       # update the filename or the state
       lineNum=$((lineNum+1))
       stateName=$(sed -n "${lineNum}p" $machineExtension/States)
       filenameForState=State_$stateName.mm
    done
    #
    #
    # comamnd for the machine
    echo "Your CMakeLists.txt needs : add_library($machineName OBJECT src/$machineName.mm )"
    echo "add_library($machineName OBJECT src/$machineName.mm )" >>  $outputCMakeLists
    linkForMachine=$linkForMachine'$<TARGET_OBJECTS:'$machineName">)"
    echo -e "Your CMakeLists.txt needs : " $linkForMachine
    echo -e $linkForMachine >> $outputCMakeLists
    echo "set_target_properties($thePrefix$machineName  PROPERTIES OUTPUT_NAME $machineName)"
    echo  "set_target_properties($thePrefix$machineName  PROPERTIES OUTPUT_NAME $machineName)" >> $outputCMakeLists
    #
    # repeat the loop over the states for Linux additional flags
    #
    echo "Your CMakeLists.txt needs : " 'if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")'
    echo 'if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")' >> $outputCMakeLists
    lineNum=1
    stateName=$(sed -n "${lineNum}p" $machineExtension/States)
    filenameForState=State_$stateName.mm
    while [ -f $machineExtension/$filenameForState ]; do
	    echo "Your CMakeLists.txt needs : set_target_properties(${machineName}_State_$stateName PROPERTIES COMPILE_FLAGS" '"-x c++ -fPIC")'
	    echo "set_target_properties(${machineName}_State_$stateName PROPERTIES COMPILE_FLAGS" '"-x c++ -fPIC")' >> $outputCMakeLists
       # update the filename or the state
       lineNum=$((lineNum+1))
       stateName=$(sed -n "${lineNum}p" $machineExtension/States)
       filenameForState=State_$stateName.mm
    done
    #
    echo "Your CMakeLists.txt needs : set_target_properties($machineName PROPERTIES COMPILE_FLAGS" '"-x c++ -fPIC")'
    echo "set_target_properties($machineName PROPERTIES COMPILE_FLAGS" '"-x c++ -fPIC")' >> $outputCMakeLists
    #
    echo "Your CMakeLists.txt needs : " 'endif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")'
    echo 'endif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")' >> $outputCMakeLists
    ##########
    echo "" >> $outputCMakeLists
    echo "## Declare a cpp executable" >> $outputCMakeLists
    echo "# add_executable("$machineName"_node src/"$machineName"_node.cpp)" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Add cmake target dependencies of the executable/library" >> $outputCMakeLists
    echo "## as an example, message headers may need to be generated before nodes" >> $outputCMakeLists
    echo "# add_dependencies("$machineName"_node "$machineName"_generate_messages_cpp)" >> $outputCMakeLists
    echo "" >> $outputCMakeLists

    echo "## Specify libraries to link a library or executable target against" >> $outputCMakeLists
    echo "# target_link_libraries("$machineName"_node" >> $outputCMakeLists
    echo "#   \${catkin_LIBRARIES}" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "target_link_libraries($thePrefix$machineName  libclfsm" '${catkin_LIBRARIES})'
    echo "target_link_libraries($thePrefix$machineName  libclfsm" '${catkin_LIBRARIES})'  >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    ##########
    echo "#############" >> $outputCMakeLists
    echo "## Install ##" >> $outputCMakeLists
    echo "#############" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "# all install targets should use catkin DESTINATION variables" >> $outputCMakeLists
    echo "# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Mark executable scripts (Python etc.) for installation" >> $outputCMakeLists
    echo "## in contrast to setup.py, you can choose the destination" >> $outputCMakeLists
    echo "# install(PROGRAMS" >> $outputCMakeLists
    echo "#   scripts/my_python_script" >> $outputCMakeLists
    echo "#   DESTINATION \${CATKIN_PACKAGE_BIN_DESTINATION}" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    ##########
    echo "## Mark executables and/or libraries for installation" >> $outputCMakeLists
    echo "# install(TARGETS "$machineName" "$machineName"_node" >> $outputCMakeLists
    echo "#   ARCHIVE DESTINATION \${CATKIN_PACKAGE_LIB_DESTINATION}" >> $outputCMakeLists
    echo "#   LIBRARY DESTINATION \${CATKIN_PACKAGE_LIB_DESTINATION}" >> $outputCMakeLists
    echo "#   RUNTIME DESTINATION \${CATKIN_PACKAGE_BIN_DESTINATION}" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Mark cpp header files for installation" >> $outputCMakeLists
    echo "# install(DIRECTORY include/\${PROJECT_NAME}/" >> $outputCMakeLists
    echo "#   DESTINATION \${CATKIN_PACKAGE_INCLUDE_DESTINATION}" >> $outputCMakeLists
    echo "#   FILES_MATCHING PATTERN \"*.h\"" >> $outputCMakeLists
    echo "#   PATTERN \".svn\" EXCLUDE" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Mark other files for installation (e.g. launch and bag files, etc.)" >> $outputCMakeLists
    echo "# install(FILES" >> $outputCMakeLists
    echo "#   # myfile1" >> $outputCMakeLists
    echo "#   # myfile2" >> $outputCMakeLists
    echo "#   DESTINATION \${CATKIN_PACKAGE_SHARE_DESTINATION}" >> $outputCMakeLists
    echo "# )" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    ##########
    echo "#############" >> $outputCMakeLists
    echo "## Testing ##" >> $outputCMakeLists
    echo "#############" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Add gtest based cpp test target and link libraries" >> $outputCMakeLists
    echo "# catkin_add_gtest(\${PROJECT_NAME}-test test/test_"$machineName".cpp)" >> $outputCMakeLists
    echo "# if(TARGET \${PROJECT_NAME}-test)" >> $outputCMakeLists
    echo "#   target_link_libraries(\${PROJECT_NAME}-test \${PROJECT_NAME})" >> $outputCMakeLists
    echo "# endif()" >> $outputCMakeLists
    echo "" >> $outputCMakeLists
    echo "## Add folders to be run by python nosetests" >> $outputCMakeLists
    echo "# catkin_add_nosetests(test)" >> $outputCMakeLists

    ##########
    # Hints for installing
    echo -e "\nINSTALLING: $machineName.machine \n"
    echo "You should copy the result after a succesfull catkin_make"
    echo "You are at $(pwd)":
    if [ $UNAME_S = "Darwin" ]; then
       result="$realtive_catkin_destiantion/lib/lib$machineName.dylib"
       else
       result="$realtive_catkin_destiantion/lib/lib$machineName.so"
       fi
    echo -e "The result should be at $result\n"
    echo -e "mv $result $destination/$machineName\n"
    echo -e "And if not there, also create a link to a .so file\n"
    echo -e "ln -f $destination/$machineName $destination/$machineName.so "
    echo -e "\nRUNNING: $machineName.machine \n"
    echo -e "$realtive_catkin_destiantion/lib/clfsm/clfsm $realtive_catkin_destiantion/lib/$machineName.machine \n"
    #
else
       echo "Machine not found! Run this script in teh same directory wherw <machineName>.machine is "
fi
