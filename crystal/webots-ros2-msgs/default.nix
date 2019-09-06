
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_msgs/0.0.2-1.tar.gz;
    sha256 = "aebc172cb774aaaa12ca507a6bbbddc13326d52b849b64c082b2a3b8b63261a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Services and Messages of the webots_ros2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}