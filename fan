#!/bin/sh

# This command only needs to be ran once:
# sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

fan() {
  echo "First timer? Run this command first: sudo nvidia-xconfig -a
  --cool-bits=28 --allow-empty-initial-configuration"
  nvidia-settings -a [gpu:0]/GPUFanControlState=1
  nvidia-settings -a [fan]/GPUTargetFanSpeed="$1"
}

fan "$1"
