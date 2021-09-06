#!/bin/bash

# Image URL
URL="https://video.dot.state.mn.us/video/image/metro/C1276?1630885440=1630885440"

# Supply via command line.
MINUTES_TO_CAPTURE=$1

# Where to put the images.
OUTPUT_DIR="./output"

end=$((SECONDS+MINUTES_TO_CAPTURE*60))
while [ $SECONDS -lt $end ]; do
  DATE=`date +%Y-%m-%d__%H.%M.%S`
  curl -s $URL > $OUTPUT_DIR/$DATE.jpg 
done

