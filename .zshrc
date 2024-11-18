#
# .zshrc
#
# @author dbuettner
#

# initialize command completion system
autoload -Uz +X compinit && compinit


if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

alias l='ls -oh'
alias ll='ls -ohAF'
alias ll='ls -ohAFT'


# Set architecture-specific brew share path.
arch_name="$(uname -m)"
if [ "${arch_name}" = "x86_64" ]; then

elif [ "${arch_name}" = "arm64" ]; then
    if [ -f "/opt/homebrew/bin/brew" ]; then
        export PATH=/opt/homebrew/bin:$PATH
    fi
else
    echo "Unknown architecture: ${arch_name}"
fi

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800


# load fast-node-manager (fnm)
if which fnm 1>/dev/null; then
    # eval fnm only, if `which fnm` exits with success
    eval "$(fnm env)"
fi
