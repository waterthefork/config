#!/bin/bash
sleep 2
# Select audio card/driver 0
export ALSA_CARD=0

# Unmute headphones
amixer -c 0 sset Headphone unmute

# Set headphone volume to 100%
amixer -c 0 sset Headphone 100%

# Optional: unmute master and set to 100%
amixer -c 0 sset Master unmute
amixer -c 0 sset Master 100%
