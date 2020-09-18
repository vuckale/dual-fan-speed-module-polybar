#!/bin/bash
left_fan=$(sensors | grep "Left" | cut -d':' -f2 | cut -d ' ' -f2)
right_fan=$(sensors | grep "Right" | cut -d':' -f2 | cut -d ' ' -f2)
echo "L $left_fan R $right_fan"

