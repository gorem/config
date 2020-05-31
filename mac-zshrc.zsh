# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mike/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lh="ls -d .!(|.)"
alias bat="pmset -g batt"   # battery
alias et="emacs -nw"        # Emacs terminal, which I don't even use
alias e="code"
alias v="vim"
alias c="code"              # Visual Studio Code
alias p="python3"
alias xe="xelatex"
alias cl="clear"
alias fr="cd ~ && clear"    # "fresh"
alias sz="source ~/.zshrc"
alias sayg="say -v Anna"
alias ml="p ~/Code/utilities/letter/convert_letter.py"

# Common directories
alias eul='cd ~/Code/euler'
alias conf='cd ~/Code/config'
alias ws='cd ~/Code/past-subject'
alias util='cd ~/Code/utilities'

export EDITOR='/usr/local/bin/code'

# journal
function jr {
    mthyr=`date +"%B %Y"`
    python3 ~/Code/config/mac-journal.py >> ~/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents/$mthyr.txt
    # open VS Code at the "end" of the file
    code -g ~/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents/"$mthyr".txt:500
}
# journal directory
function jd {
    open ~/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents/
}

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
# ep: convert to epub
function ep {
    for var in "$@"
    do
        ebook-convert "$@" .EPUB --minimum-line-height=145
    done
}
prompt_context() {}
export PATH=$HOME/.gem/ruby/2.6.0/bin:/usr/local/opt/ruby/bin:/usr/local/bin:$PATH:/Library/TeX/texbin
