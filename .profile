### Only use on macOS

export CLICOLOR=1
# export LSCOLOR=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxBxDxCxegedabagacad
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
PS1='\[\033[32m\]\h\[\033[m\]:\[\033[33;1m\]\W \[\033[36m\]\u\[\033[m\]\$ '

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

WINEPREFIX="/Users/frank/.winebrew"
export WINEPREFIX

export PATH="/usr/local/smlnj/bin":$PATH

function colorchart() {
  #
  # This file echoes a bunch of color codes to the terminal to demonstrate
  # what's available. Each line is the color code of one forground color,
  # out of 17 (default + 16 escapes), followed by a test use of that color
  # on all nine background colors (default + 8 escapes).
  #
  T='gYw'   # The test text
  echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";
  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T \033[0m\033[$BG \033[0m";
    done
    echo;
  done
  echo
}

# added by Miniconda2 4.3.21 installer
#export PATH="/Users/frank/miniconda2/bin:$PATH"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
. /Users/frank/miniconda3/etc/profile.d/conda.sh
export PATH=${HOME}/go/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin

. ~/.iterm2_shell_integration.bash

eval $(thefuck --alias)
