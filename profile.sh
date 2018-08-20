 ## This should go into ~./profile on a Mac, and ~/.bashrc on Raspbian
 
 # Pretty command prompt
  # Has date, and other fun stuff!
  export PS1='[\#] \[\033[1;35m\]\D{%a %m/%d}\[\033[1m\] \[\033[1;97m\]@\[\033[0m\] \[\033[1;35m\]\t\[\033[0m\] \[\033[1;96m\]\w\[\033[0m\] \[\033[0;32m\]\u\[\033[0m\] \[\033[1;93m\]\$\[\033[0m\]\[\033[0;97m\]:\[\033[0m\] '

  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad
  alias ls='ls -GFh'
  
 
 
 ##---- Mainly for Mac
 # Easy CSV on the command line
 
  # alias pretty_csv='~/.bash_scripts/pretty_csv.sh'
  # alias csv_byte='~/.bash_scripts/csv_byte.sh'

  function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
  }

  function csv_peak {
    cat $@ | dd ibs=1024 count=2 | column -s, -t
  }

  function gzcsv {
    gzip -cd $@ | dd ibs=1024 count=2 | column -s, -t
  }

 alias reload_bash="source ~/.bash_profile"
 alias reloadBash="source ~/.bash_profile"


## If installed Sublime Text
 alias subl="~/Applications/Sublime\ Text.app/contents/SharedSupport/bin/subl"
 alias sublime="~/Applications/Sublime\ Text.app/contents/SharedSupport/bin/subl"
 
 
 
