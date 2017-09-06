# \bin/bash
echo "Where are the album folders located?"
read filelocation
echo "Where should the scripts be written to"
read filedestination
for folder in $file;
do
	echo $folder
	file=$filedestination"/"$(basename "$folder")".sh"
	echo "# \\bin/bash">"$file"
	echo "vlc \""$folder"\"">>"$file"
done

