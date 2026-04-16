#!/bin/bash

create_date=$(date +"%y-%m-%d")

folder_path="/root/$create_date"

if [ -d $folder_path ]; then
	echo "This folder ($folder_path) already exists"
else
	echo "Folder "$folder_path" created successfully"
	mkdir -p "$folder_path"
fi
