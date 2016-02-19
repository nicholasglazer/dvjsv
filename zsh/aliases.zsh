# reload zsh config
alias reload='source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

alias vim="nvim"

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Helpers
alias grep="grep --color=auto"
alias df="df -h" # disk free, in Gigabytes, not bytes
alias du="du -h -c" # calculate disk usage for a folder

#temporary change language to 'us' with querty layout
alias us="setxkbmap us"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# change videocard with prime 
alias intel='sudo prime-select intel'
alias nvidia='sudo prime-select nvidia'
alias videocard='prime-select query'

# some system shortcuts
alias s='sudo'
alias i="sudo apt-get install"
alias u="sudo apt-get update"
alias ug="sudo apt-get upgrade"
alias dug="sudo apt-get dist-upgrade"

#npm
alias nis="npm install --save"
alias nig="sudo npm install -g"
alias npmout="sudo npm outdated -g —depth=0"

#npm check update shortcut
alias ncu="sudo ncu"

#others
alias pg="cd ~/code/playground"
alias pj="cd ~/code/proj"
alias j="cd ~/code/job"
