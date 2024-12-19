#!/bin/bash
touch song{1,2,3,4,5,6}.mp3
touch film{1,2,3,4,5,6}.mp4
touch snap{1,2,3,4,5,6}.jpg
mkdir Music
mkdir Pictures
mkdir Videos

mv *.mp3 Music
mv *.mp4 Videos
mv *.jpg Pictures

