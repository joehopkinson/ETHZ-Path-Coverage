#!/usr/bin/env bash

NOW=$(date +"%m-%d-%Y")

dumpcap -w /home/joe/catkin_ws/src/data/dumpcap/data.$NOW -f "host turtlebot"
