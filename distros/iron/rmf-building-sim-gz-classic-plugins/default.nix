
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, menge-vendor, opencv, qt5, rclcpp, rmf-building-sim-common, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-building-sim-gz-classic-plugins";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/iron/rmf_building_sim_gz_classic_plugins/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "d7357a21c6e8d04a0056701ef562608dd46379dcf0249c562f7c2bfe55357ed6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros menge-vendor opencv qt5.qtbase rclcpp rmf-building-sim-common rmf-fleet-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugins so that buildings generated by rmf_building_map_tools can
    talk to the ROS 2-based systems in the rmf_traffic_ros2 package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
