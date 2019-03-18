#!/bin/bash
# vague

# make a list of youtubers who talk that you like to hear
# download the latest 3 videos for each
# convert to super small format optimized for voice
# always have something to listen to i guess

list[0]=url1
list[1]=url2


maxdl=3

for index in ${list[*]}
do
	echo $index --extract-audio --audio-format aac --audio-quality 5
	youtube-dl $index  --extract-audio --audio-format aac --audio-quality 5 --max-downloads $maxdl
done
