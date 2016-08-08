#!/bin/bash
find -name '*' -print0 | while ifs= read -r -d '' file; do
	parts=($(echo "$file" | perl -pe 's/\.\/(.*?)-(.*)/\1 \2/'))
	h=${parts[0]}
	f=${parts[1]}
	mkdir -p $h
	mv "$file" $h/$f
done

