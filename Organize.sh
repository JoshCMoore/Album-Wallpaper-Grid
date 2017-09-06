# \bin/bash
x=10
y=10
for file in /home/josh/Desktop/*
do
	gvfs-set-attribute -t string "$file" 'metadata::nautilus-icon-position' "$x,$y"
	x=$((x+64))
	if [ "$x" -ge "955" ]
	then
		x=10
		y=$((y+64))
	fi
done	
