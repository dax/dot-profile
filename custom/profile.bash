source "${BASH_IT}/custom/tylenol2/tylenol2.theme.bash"

export GIT_HOSTING='dax@happycoders.org'

export EDITOR="e"
export GIT_EDITOR='e'

fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
