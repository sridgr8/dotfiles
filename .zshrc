# PS1="%n@%m %1~ %#"
# %n is the username of your account.
# %m is the MacBook's model name.
# %1~ symbol means the current working directory path where the ~ strips the $HOME directory location.
# %# means that the prompt will show # if the shell is running with root (administrator) privileges, or else offers % if it doesn't.

# PROMPT="%F{cyan}%n@%m %1~ %#"

# PROMPT='%B%F{cyan}%n%f:~$%b'

# PS1="";
# PS1+="%F{cyan}%n "; # username
# PS1+="%F{white}at ";
# PS1+="%F{blue}%m "; # username
# PS1+="in ${PWD/#$HOME/~} " #pwd data
# PS1+="%F{green}$"; # symbol at the end
# export PS1;

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{71}on branch%f %B%F{166}%b '
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='' # create the variable
PROMPT+='%F{28}%n%f' # username
PROMPT+='%B%F{35}@%f%b' # at the rate symbol in bold
PROMPT+='%F{28}%m%f ' # machine name
# PROMPT+='%F{24}in%f ' # normal text
PROMPT+='%F{96}in%f ' # normal text
# PROMPT+='%B%F{38}%1~%f%b ' # add the current directory information
# PROMPT+='%F{96}at%f ' # normal text
# PROMPT+='%F{97}${PWD/#$HOME/~}%f ' # add the current directory information
# PROMPT+='%F{97}${${PWD/#$HOME/~}%/*}/%f' # add the parent directory information
PROMPT+='%F{97}${${PWD/#$HOME/~}%/*}/%f' # add the parent directory information
PROMPT+='%B%F{99}%U%1~%u%f%b ' # add the current directory information
PROMPT+='${vcs_info_msg_0_}' # add the git branch infomation
PROMPT+=$'\n' # add a new line
PROMPT+='%F{153}$%f' # the symbol at the end
PROMPT+='%b ' # reset bold text
# PROMPT+='%F{white}' # reset color

autoload -Uz compinit && compinit

## Colorize the ls output ##
alias ls='ls -G'

## Use a long listing format ##
alias ll='ls -la --color=auto'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

alias grep='grep --color'

alias python='python3'