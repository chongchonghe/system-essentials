#; -*-Shell-script-*-

case `uname` in
    Darwin)
	# commands for macOS go here
  alias ls="ls -GFh"
  alias ll="ls -GFhl"
  alias lt="ls -GFhltr"
	alias ipython="ipython --pylab osx"
	;;
    Linux)
	# commands for Linux go here
  alias ls="ls --color=auto"
  alias ll="ls -l --color=auto"
  alias lt="ls -ltr --color=auto"
	alias ipython="ipython --pylab"
	;;
    FreeBSD)
	# commands for FreeBSD go here
	;;
esac

### Basics
alias cctest="echo Yes sharerc is sourced"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias du="du -sh"
alias l1="ls -t1 | head -n 1"
alias l2="ls -t1 | head -n 2 | tail -n 1"
alias l3="ls -t1 | head -n 3 | tail -n 1"
# alias grep="grep -d skip"
# alias grep="grep -r"

### Commands
alias sshupdate="rsync -raz --progress"
alias sizesort="du -s * | sort -n"
alias tree="tree -N"
alias rsyncu="rsync -Larvh --update"
alias vimode="set -o vi"
alias emacsmode="set -o emacs"
alias pdb="python -m pdb"
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias jpcv="jupyter nbconvert"

### set vi mode
set -o vi

function gitall() {
    git add .
    git commit -a -m "$1"
    git push origin $(current_branch)
}

function rc() {
  if [[ $1 == list ]]; then
      if [[ $# -ge 2 ]]; then
	  file=~/rc/${2}.list
	  if [[ -e $file ]]; then
	      zsh $file
	  fi
      else
	  (cd ~/rc ; ls *.rc)
      fi
  else
      source ~/rc/${1}.rc
  fi
}


#-------------------------------   End   -------------------------------------
# echo "bashrc.share is sourced"
echo "$0 is sourced"