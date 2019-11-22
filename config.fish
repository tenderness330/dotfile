fish_vi_key_bindings

function fish_user_key_bindings
  bind \cP 'accept-autosuggestion' -M insert
  bind \cN 'accept-autosuggestion' -M insert
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]; . '$HOME/google-cloud-sdk/path.fish.inc'; end

umask 022
set PATH $HOME/.local/bin /usr/local/go/bin $HOME/go/bin $PATH
