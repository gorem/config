alias ll="ls -F -l"
alias lh="ls -d .!(|.)"
alias e="emacs"
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
    emacs -nw ~/Dropbox/write/journal/"$yr"/"$mthyr".txt --eval "(progn (goto-char (point-max)) (insert-journal-timestamp))"
}
