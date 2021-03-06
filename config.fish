set -x LANG ja_JP.UTF-8
fish_vi_key_bindings

function fish_user_key_bindings
  bind \cP 'accept-autosuggestion' -M insert
  bind \cN 'accept-autosuggestion' -M insert
end

function fish_prompt
  printf '%s %s' (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) '>'
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]; . '$HOME/google-cloud-sdk/path.fish.inc'; end

umask 022
set PATH $HOME/.local/bin /usr/local/go/bin $HOME/go/bin $PATH

alias vi='vim'
alias aws='/usr/local/bin/aws'

export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
