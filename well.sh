#!/bin/bash
# vague

# make a list of youtubers who talk that you like to hear
# download the latest 3 videos for each
# convert to super small format optimized for voice
# always have something to listen to i guess

dldir="tracks"
maxdl=3

mkdir -p "$dldir"
pushd "$dldir" || exit

while read line ; do
	echo $line | grep '#' && continue # skip comments
	echo line $line
	youtube-dl $line  --extract-audio --audio-format aac --audio-quality $quality --max-downloads $maxdl
done <<- EOF
	# this is a comment
	url1
	# comments are ignored
	url2
	ulr3
EOF

