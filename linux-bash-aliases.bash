alias ll="ls -F -l"
alias lh="ls -d .!(|.)"
alias e="emacs"
alias p="python3"
alias em="emacs"
alias et="emacs -nw"
alias xe="xelatex"
alias qu="shuf -n 1 ~/Dropbox/read/quotes.txt"
alias cl="clear"
alias fr="cd ~ && clear"
function quad {
	if [[ $@ ]]; then
		for var in "$@"
		do
			grep -ri --color=auto "$var" "/home/mike/Code/Scriptures"
		done
	else
		cd ~/Code/Scriptures/
	fi
}
function jr {
    yr=`date +"%Y"`
    mthyr=`date +"%B %Y"`
    if [ ! -d ~/Dropbox/write/journal/"$yr" ]; then
	mkdir -p ~/Dropbox/write/journal/"$yr"
    fi
    if [ -f ~/Dropbox/write/journal/"$yr"/"$mthyr".txt ]; then
	printf "\n" >> ~/Dropbox/write/journal/"$yr"/"$mthyr".txt	    
    fi
    python3 ~/Code/config/journal-date.py >> ~/Dropbox/write/journal/"$yr"/"$mthyr".txt
    printf "\n\n" >> ~/Dropbox/write/journal/"$yr"/"$mthyr".txt
    vim + +star ~/Dropbox/write/journal/"$yr"/"$mthyr".txt
}
