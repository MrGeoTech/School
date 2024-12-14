#!/bin/bash
# This file is a quick utility script to quickly take any videos that I need to
# be presented in markdown and convert them to a standard 

if [ -z "$1" ]
    then
    echo "Must pass name of file (without file type) to shell script!"
else
    ffmpeg -to 20 -y -i "$1.mp4" -filter_complex "fps=20,scale=600:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=64[p];[s1][p]paletteuse=dither=bayer" -loop 0 "$1.gif"
    du -sh "$1.mp4"
    du -sh "$1.gif"
fi
