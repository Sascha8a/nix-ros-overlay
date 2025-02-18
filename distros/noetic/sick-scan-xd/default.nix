
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslib, rospy, rviz, sensor-msgs, std-msgs, tf, tf2, tf2-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-sick-scan-xd";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan_xd-release/archive/release/noetic/sick_scan_xd/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "e2290874d3c137e0a9ef0a6fea0034034f4dac952599a339857c4a448714d9e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure geometry-msgs message-runtime nav-msgs roscpp roslib rospy rviz sensor-msgs std-msgs tf tf2 tf2-ros visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS 1 and 2 driver for SICK scanner'';
    license = with lib.licenses; [ "Apache-License,-Version-2.0,-see-"http-www.apache.org-licenses-LICENSE-2.0"" ];
  };
}
