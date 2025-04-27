export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

export PATH="$PATH:$GEM_HOME/bin:$HOME/Android/Sdk/platform-tools"

export EDITOR=nvim

export SAVEHIST=99
export HISTSIZE=99
export HISTFILE="$HOME/.history"

export QT_QPA_PLATFORM=wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
