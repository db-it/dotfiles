#
# .zshrc
#
# @author dbuettner
#

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

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