# Copyright 2006-2019 Joseph Block <jpb@apesseekingknowledge.net>
#
# BSD licensed, see LICENSE.txt
#
# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"
#
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
#
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
#
# Version 0.7

# Valid font modes:
# flat, awesome-patched, awesome-fontconfig, nerdfont-complete, nerdfont-fontconfig
if [[ -r ~/.powerlevel9k_font_mode ]]; then
  POWERLEVEL9K_MODE=$(head -1 ~/.powerlevel9k_font_mode)
fi

# Long running processes should return time after they complete. Specified
# in seconds.
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

# Uncomment following line if you want red dots to be displayed while waiting for completion
export COMPLETION_WAITING_DOTS="true"
export AUTOJUMP_IGNORE_CASE=1
export EDITOR="nvim"
export GOPATH=$HOME/gocode
export TYPEWRITTEN_CURSOR="beam"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
#
###### LOAD ENVIRONMENT CONFIGURATION ######
source $HOME/env.sh
#
###### LOAD ZSH-GIT-PROMPT #######
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export RPS1="%{$reset_color%}"

# Keep a ton of history. You can reset these without editing .zshrc by
# adding a file to ~/.zshrc.d.
export HISTFILE="$HOME/.zsh_history"
export HISTFILESIZE=50000000
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE
export HISTIGNORE="l:ls:la:ll:cd:w:* --help:pwd:exit"
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S - "
export HISTCONTROL="ignorespace"


# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# TOUCHBAR settings (iam4x/zsh-iterm-touchbar)
export YARN_ENABLED=true


# Correct spelling for commands
setopt correct

# turn off the infernal correctall for filenames
unsetopt correctall

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
# setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
# setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
# setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt SHARE_HISTORY

# set some options about directories
setopt pushd_ignore_dups
#setopt pushd_silent
setopt AUTO_CD  # If a command is issued that can’t be executed as a normal command,
                # and the command is the name of a directory, perform the cd command
                # to that directory.

# set some history options

# Share your history across all your terminal windows
#setopt noclobber


# Add some completions settings
setopt ALWAYS_TO_END     # Move cursor to the end of a completed word.
setopt AUTO_LIST         # Automatically list choices on ambiguous completion.
setopt AUTO_MENU         # Show completion menu on a successive tab press.
setopt AUTO_PARAM_SLASH  # If completed parameter is a directory, add a trailing slash.
setopt COMPLETE_IN_WORD  # Complete from both ends of a word.
unsetopt MENU_COMPLETE   # Do not autoselect the first completion entry.

# Miscellaneous settings
setopt INTERACTIVE_COMMENTS  # Enable comments in interactive shell.

# Extended glob setting
setopt extended_glob

##
# Completion
##
# zmodload -i zsh/complist
# setopt hash_list_all     # hash everything before completion
# setopt completealiases   # complete alisases
# setopt always_to_end     # when completing from the middle of a word, move the cursor to the end of the word
# setopt complete_in_word  # allow completion from within a word/phrase
# setopt correct           # spelling correction for commands
# setopt list_ambiguous    # complete as much of a completion until it gets ambiguous.
#
# ##
# # Various
# ##
# setopt auto_cd                  # if command is a path, cd into it
# setopt auto_remove_slash        # self explicit
# setopt chase_links              # resolve symlinks
# setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
setopt glob_dots                # include dotfiles in globbing
# setopt print_exit_value         # print return value if non-zero
# unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
# unsetopt clobber                # must use >| to truncate existing files
# unsetopt hist_beep              # no bell on error in history
# unsetopt hup                    # no hup signal at shell exit
# unsetopt ignore_eof             # do not exit on end-of-file
# unsetopt list_beep              # no bell on ambiguous completion
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/*'
# setxkbmap -option compose:ralt  # compose-key
# print -Pn "\e]0; %n@%M: %~\a"   # terminal title

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
#
########################################################################
# oh-my-zsh
########################################################################
# if [[ -d "$HOME/.oh-my-zsh" ]]; then
#     # Path to your oh-my-zsh configuration.
#     export ZSH="$HOME/.oh-my-zsh"
#     # export DISABLE_AUTO_UPDATE="true"
#     export COMPLETION_WAITING_DOTS="true"
#     # unset ZSH_THEME
#     source "$ZSH/oh-my-zsh.sh"
# fi

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
    echo 'Creating a zgen save'
    # specify plugins here
    zgen oh-my-zsh

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/git-flow
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/autojump
    zgen oh-my-zsh plugins/compleat

    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-autosuggestions
    # zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    zgen load zsh-users/zsh-completions src

    # bulk load
    zgen loadall <<EOPLUGINS
        psprint/zsh-navigation-tools
        mafredri/zsh-async
        junegunn/fzf-bin
        desyncr/auto-ls
        clvv/fasd
        lukechilds/zsh-nvm
        gimbo/iterm2-tabs.zsh
        rimraf/k
        joshuarubin/zsh-homebrew
        Tarrasch/zsh-colors
        b4b4r07/enhancd
        MichaelAquilina/zsh-auto-notify
EOPLUGINS
    # ^ can't indent this EOPLUGINS
    #
    # save all to init script
    zgen save
fi

# ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc)
#
# Base PATH
# Yes, these are a pain to customize. Fortunately, Geoff Greer made an online
# tool that makes it easy to customize your color scheme and keep them in sync
# across Linux and OS X/*BSD at http://geoff.greer.fm/lscolors/

export LSCOLORS='Exfxcxdxbxegedabagacad'
export LS_COLORS='di=1;34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

eval "$( gdircolors -b $HOME/LS_COLORS )"

# Now that we have $PATH set up and ssh keys loaded, configure zgen.

# start zgen
if [ -f ~/.zgen-setup ]; then
  source ~/.zgen-setup
fi
# end zgen

## AUTOJUMP SETTINGS ##
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Expand aliases inline - see http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
   if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
     zle _expand_alias
     zle expand-word
   fi
   zle self-insert
}

zle -N globalias

bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches

# Customize to your needs...
# Stuff that works on bash or zsh
if [ -r ~/.sh_aliases ]; then
  source ~/.sh_aliases
fi

# Stuff only tested on zsh, or explicitly zsh-specific
if [ -r ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

if [ -r ~/.zsh_functions ]; then
  source ~/.zsh_functions
fi

export LOCATE_PATH=/var/db/locate.database

if [[ "$(uname -s)" == "Darwin" ]]; then
  # Load macOS-specific aliases
  [ -f ~/.osx_aliases ] && source ~/.osx_aliases
  if [ -d ~/.osx_aliases.d ]; then
    for alias_file in ~/.osx_aliases.d/*
    do
      source "$alias_file"
    done
  fi

  # Apple renamed the OS, so...
  [ -f ~/.macos_aliases ] && source ~/.macos_aliases
  if [ -d ~/.macos_aliases.d ]; then
    for alias_file in ~/.macos_aliases.d/*
    do
      source "$alias_file"
    done
  fi
fi

if [ -f /usr/local/etc/grc.bashrc ]; then
  source "$(brew --prefix)/etc/grc.bashrc"

  function ping5(){
    grc --color=auto ping -c 5 "$@"
  }
else
  alias ping5='ping -c 5'
fi

# Speed up autocomplete, force prefix mapping
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")';

# Load any custom zsh completions we've installed
if [ -d ~/.zsh-completions ]; then
  for completion in ~/.zsh-completions/*
  do
    source "$completion"
  done
fi

# echo
# echo "Current SSH Keys:"
# ssh-add -l
# echo

# Honor old .zshrc.local customizations, but print deprecation warning.
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
  echo '~/.zshrc.local is deprecated - use files in ~/.zshrc.d instead.'
  echo 'Future versions of zsh-quickstart-kits will no longer load ~/.zshrc.local'
fi

# Load zmv
if [[ ! -f ~/.zsh-quickstart-no-zmv ]]; then
  autoload -U zmv
fi

# Make it easy to append your own customizations that override the above by
# loading all files from the ~/.zshrc.d directory
#mkdir -p ~/.zshrc.d
#if [ -n "$(/bin/ls ~/.zshrc.d)" ]; then
#  for dotfile in ~/.zshrc.d/*
#  do
#    if [ -r "${dotfile}" ]; then
#      source "${dotfile}"
#    fi
#  done
#fi

# remove dupes from $PATH using a zsh builtin
# https://til.hashrocket.com/posts/7evpdebn7g-remove-duplicates-in-zsh-path
typeset -aU path;

# If desk is installed, load the Hook for desk activation
[[ -n "$DESK_ENV" ]] && source "$DESK_ENV"

# Do selfupdate checking. We do this after processing ~/.zshrc.d to make the
# refresh check interval easier to customize.
#
# If they unset QUICKSTART_KIT_REFRESH_IN_DAYS in one of the fragments
# in ~/.zshrc.d, then we don't do any selfupdate checking at all.

_load-lastupdate-from-file() {
  local now=$(date +%s)
  if [[ -f "${1}" ]]; then
    local last_update=$(cat "${1}")
  else
    local last_update=0
  fi
  local interval="$(expr ${now} - ${last_update})"
  echo "${interval}"
}


# Fix bracketed paste issue
# Closes #73
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)

# Load iTerm shell integrations if found.
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# zgen oh-my-zsh plugins/z


##################################
#	zstyle completion options	 #
#################################
# autoload -U compinit && compinit
# if type brew &>/dev/null; then
#     FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
#
#     autoload -Uz compinit
#     compinit
#     kitty + complete setup zsh | source /dev/stdin
# fi


source $HOME/.gem/gems/colorls-1.3.1/lib/tab_complete.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/saforem2/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/saforem2/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/saforem2/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/saforem2/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# export PATH="/Users/saforem2/opt/anaconda3/bin:$PATH"

# alias ls='COLUMNS=100 exa -BFax --group-directories-first --color=auto'
ctags=/usr/local/bin/ctags


# function rg() {
#     if [ -t 1 ]; then
#         command rg -p "$@" | less -RFX
#     else
#         command rg "$@"
#     fi
# }

autoload -U promptinit; promptinit

zmodload zsh/nearcolor

# optionally define some options
export PURE_CMD_MAX_EXEC_TIME=10

# change the path color
# zstyle :prompt:pure:path color #494949
zstyle :prompt:pure:path color '#ffff00'
#
# # change the color for both `prompt:success` and `prompt:error`
zstyle :prompt:pure:prompt:success color '#87ff00'
zstyle :prompt:pure:prompt:error color '#ff005b'
zstyle :prompt:pure:exececution_time color '#fd971f'
zstyle :prompt:pure:git:branch color '#00bcd4'
zstyle :prompt:pure:git:dirty color '#ff5995'
zstyle :prompt:pure:user color '#007dff'
zstyle virtualenv color '#494949'
# zstyle ':prompt:pure:prompt:error' color #ff005b
# zstyle ':prompt:pure:prompt:success' color #87ff00
#
# # turn on git stash status
zstyle :prompt:pure:git:stash show yes

##
# Various
##
# formatting and messages
# http://www.masterzen.fr/2009/04/19/in-love-with-zsh-part-one/
# zstyle ':completion:*' verbose yes
# zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
# zstyle ':completion:*:messages' format '%d'
# zstyle ':completion:*:warnings' format "$fg[red]No matches for:$reset_color %d"
# zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
# zstyle ':completion:*' group-name ''
prompt pure

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
eval "$( gdircolors -b $HOME/LS_COLORS )"

# export RPS1="%{$reset_color%}"
# source ~/almostontop/almostontop.plugin.zsh

###### LOAD ALIASES ######
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

conda config --set changeps1 False


# if [ $(tty) == /dev/tty1 ]; then
#     /usr/bin/tmux new -s 0
#     /usr/bin/tmux attach -t 0
# fi
#
