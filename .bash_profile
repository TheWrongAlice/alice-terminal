# Configure terminal appearence

echo "           #,,*#,         "
echo "          //,,,./(        "
echo "         &#/*/#,/         "
echo "         ////,.,,         Curiouser and curiouser..."
echo "        ****////      /   "
echo "       /(//*..**..# ,*    "
echo "       (**((/.  ./(*(     "
echo " *     **(/((,,,,//(      "
echo "  (/***(  (##,,/          "
echo "       (((((..  .#        "
echo "      (((((,.    .        "
echo "     ((((((..    ..       "
echo "    ((((((/..    ../      "
echo "   &(((((/(...   ...      "
echo "   ((((((/,....  ..,,     "
echo "  (/((((//.,,..  ...,     "
echo "  (/((((//...... ./(/%    "
echo "  /((((///(((//**//(//    "
echo "      (///(((//***(       "
echo "          /* (*           "
echo "           . .            "
echo "           . .            "
echo "           & &            "

export BASH_SILENCE_DEPRECATION_WARNING=1 # Hide default shell msg on MacOS Catalina+

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[1;35m\]\$(parse_git_branch) \[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
