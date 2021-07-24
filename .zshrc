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
zstyle ':vcs_info:git:*' formats '%F{white}on branch %B%F{red}%b '
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='' # create the variable
PROMPT='%B%F{green}%n %b' # username
PROMPT+='%F{white}in ' # normal text
# PROMPT+='%B%F{cyan}${PWD/#$HOME/~}%b ' # add the current directory information
PROMPT+='%B%F{cyan}%1~%b ' # add the current directory information
PROMPT+='${vcs_info_msg_0_}' # add the git branch infomation
PROMPT+=$'\n' # add a new line
PROMPT+='%F{yellow}$ ' # the symbol at the end
PROMPT+='%b' # reset bold text
PROMPT+='%F{white}' # reset color
