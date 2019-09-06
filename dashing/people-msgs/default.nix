
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-people-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-ros2-release/archive/release/dashing/people_msgs/1.3.0-1.tar.gz;
    sha256 = "ede72d1fffafbc5d35527bf8b1249b6e69f4697880eccb4d338bee8a70755d03";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}