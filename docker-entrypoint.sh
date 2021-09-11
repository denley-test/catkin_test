#!/usr/bin/env bash

set -ex

source /opt/ros/kinetic/setup.bash
catkin_make -j$(nproc --all)

source devel/setup.bash
roslaunch talker_listener talker_listener.launch
