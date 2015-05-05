function ph {
	for var in "$@"
	do
		grep -i "$var" "/Users/mike/Google Drive/phonelist.txt"
	done
}

alias ll="ls -F -l"
