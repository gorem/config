function ph {
	for var in "$@"
	do
		grep -i "$var" "/Users/mike/Google Drive/phonelist.txt"
	done
}
alias ll="ls -F -l"
bind "set completion-ignore-case on"
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
