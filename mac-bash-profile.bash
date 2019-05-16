alias ll="ls -F -l"
alias lh="ls -d .!(|.)"
alias bat="pmset -g batt"
alias em="open -a Emacs"
alias et="emacs -nw"
alias xe="xelatex"
alias cl="clear"
alias fr="cd ~ && clear"
alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
alias sayg="say -v Anna"
alias goog="cd ~/Code/Google/"
bind "set completion-ignore-case on"
export PS1="\u \W \A \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

function quad {
	if [[ $@ ]]; then
		for var in "$@"
		do
			grep -ri --color=auto "$var" "/Users/mike/Documents/read/church/scriptures"
		done
	else
		cd /Users/mike/Documents/read/church/scriptures
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

function ns {
    for var in "$@"
    do
	grep -rih "$@" ~/Documents/archives/notes/ | less
    done
}

function kp {
    if [[ $@ ]]; then
        for var in "$@"
        do
            echo "$@" >> ~/Dropbox/write/keep.txt
        done
    else
        open ~/Dropbox/write/keep.txt
    fi
}

function td {
    today=$(date +"%Y-%m-%d")
    if [ ! -f ~/Documents/archives/todo/todo"$today".txt ]; then
	lastfile=$(ls ~/Documents/archives/todo | sort | tail -n 1)
	sed '/Accomplished:/q' ~/Documents/archives/todo/"$lastfile" > ~/Documents/archives/todo/todo"$today".txt
    fi
    open ~/Documents/archives/todo/todo"$today".txt
}
