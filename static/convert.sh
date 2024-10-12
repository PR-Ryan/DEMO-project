#!/bin/bash

# Loop through all subfolders inside 'extended_videos'
for subfolder in extended_videos/*; do
  if [ -d "$subfolder" ]; then
    # Rename the files starting from the largest number to avoid overwriting
    for i in {12..1}; do
      old_name="${subfolder}/${i}.mp4"
      new_number=$((i + 3))
      new_name="${subfolder}/${new_number}.mp4"

      if [ -f "$old_name" ]; then
        mv "$old_name" "$new_name"
      fi
    done
  fi
done
