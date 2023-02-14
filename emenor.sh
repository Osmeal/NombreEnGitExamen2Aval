#!/bin/bash

valencia = $(./cmedia.sh Valencia)
barcelona = $(./cmedia.sh Barcelona)
madrid = $(./cmedia.sh Madrid)

if (( $(echo "$barcelona <= $valencia" | bc -l) && $(echo "$barcelona <= $madrid" | bc -l) )); then
    echo "barcelona"
elif (( $(echo "$valencia <= $barcelona" | bc -l) && $(echo "$valencia <= $madrid" | bc -l) )); then
    echo "valencia"
else
    echo "madrid"
fi