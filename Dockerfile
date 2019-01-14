FROM ros:kinetic
MAINTAINER Denley Hsiao <denley@justtodo.com>

ENV APP_DIR=/root/catkin_ws
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

RUN apt-get update && apt-get install -y vim tree ros-kinetic-ros-tutorials
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
CMD ["roslaunch", "ros_app ros_app.launch"]