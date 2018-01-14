alias ll="ls -F -l"
alias lh="ls -d .!(|.)"
alias e="emacs"
alias em="emacs"
alias et="emacs -nw"
alias xe="xelatex"
function jr {
    yr=`date +"%Y"`
    mthyr=`date +"%B %Y"`
    emacs -nw ~/Dropbox/write/journal/"$yr"/"$mthyr".txt --eval "(progn (goto-char (point-max)) (journal-timestamp))"
}
function kp {
    if [[ $@ ]]; then
       for var in "$@"
       do
           echo "$@" >> ~/Dropbox/write/keep.txt
       done
    else
       et ~/Dropbox/write/keep.txt
    fi
}
