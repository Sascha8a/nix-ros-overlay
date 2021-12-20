
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-examples";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/foxy/microstrain_inertial_examples/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "211203e7307f02e28171451014999e695a287f20aea89cc38986a59543c51b48";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ microstrain-inertial-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}