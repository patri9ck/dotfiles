export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

export PATH="$PATH:$GEM_HOME/bin:$HOME/Android/Sdk/platform-tools:$HOME/Development/flutter/bin:/usr/local/texlive/2025/bin/x86_64-linux"
export MANPATH="$MANPATH:/usr/local/texlive/2025/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2025/texmf-dist/doc/info"

export ANV_DEBUG=video-decode,video-encode

export EDITOR=nvim

export SAVEHIST=99
export HISTSIZE=99
export HISTFILE="$HOME/.history"

export QT_QPA_PLATFORM="wayland;xcb"
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
