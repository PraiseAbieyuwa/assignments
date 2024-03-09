if [[ $1 == "-n" && $2=~^[0-9]+$ ]]; then

	sudo du -h $3 | sort -rh | head $2

## when ./script.sh -d /dir is implemented.

elif [[ $1 == "-d" ]]; then

	sudo du -h $2 | sort -rh

## when ./script.sh -h is run

elif [[ $1 == "-h" ]]; then

	echo "run sript with command arguements  -d,-n,and -h \n
	where: \n
	-d = list allfiles and directories
	-h = list help function 
	-n = list a specific number of directories.
	Or just enter command 'du /dir' to view all usage. "


## when ./script.sh /dir is entered and there is no extra arguements.

else
	sudo du -h $1 | sort -rh | head -8

fi

