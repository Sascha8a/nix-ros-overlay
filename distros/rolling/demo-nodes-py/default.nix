
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, pythonPackages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.31.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.31.1-1.tar.gz";
    name = "0.31.1-1.tar.gz";
    sha256 = "724e9194ecd98205108d4b4fedd1e5889b6f479b500896d567003b466b8c5379";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
