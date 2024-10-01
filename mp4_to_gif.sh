#!/bin/bash
# This file is a quick utility script to quickly take any videos that I need to
# be presented in markdown and convert them to a standard 

if [ -z "$1" ]
    then
    echo "Must pass name of file (without file type) to shell script!"
else
    ffmpeg -to 10 -i "$1.mp4" -vf "fps=24,scale=720:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "$1.gif"
fi
