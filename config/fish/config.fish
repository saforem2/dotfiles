status is-interactive &&
  eval /Users/saforem2/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source

eval (gh completion -s fish)

eval (gdircolors -b $HOME/LS_COLORS -c)
alias ls="lsd -AF --group-dirs first"
alias gd="git diff"
alias t='todo.sh -d $HOME/.todo.cfg'

export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'
alias t='todo.sh -d $HOME/.todo.cfg'

set -gx PATH $PATH ~/bin
set -gx EDITOR nvim
set -g fish_user_paths "/Users/saforem2/opt/anaconda3/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX YES

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Add this to your config.fish or equivalent.
# Fish doesn't support recursive calls so use f function
function f
    fff $argv
    set -q $XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
    cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

eval (register-python-argcomplete conda)

conda config --set changeps1 True

source ~/.iterm2_shell_integration.(basename $SHELL)
source ~/.aliases

