
#!/bin/bash
read -p "Enter Directory name: " name
function make_dir(){
	mkdir $1
}

if ! make_dir "$name"; then
	echo "Error: Directory Already Exists"
	exit 1
fi

echo "Directory made successfully"
