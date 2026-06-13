export HOSTNAME="$(hostname)"

export PATH="$PATH:$HOME/Android/Sdk/platform-tools"

if [ "$HOSTNAME" = notebook ]
then
    export WEBCAM='Integrated Camera'

    export VPN_INTERFACE=wg0
elif [ "$HOSTNAME" = desktop ]
then
    export WEBCAM='USB Web Camera'

    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

    export PATH="$PATH:$GEM_HOME/bin"
fi

export EDITOR=nvim

export PLAYER=spotify
export PLAYER_EXECUTABLE=spotify

export SAVEHIST=99
export HISTSIZE=99
export HISTFILE="$HOME/.history"

export CITY=Constance

export QT_QPA_PLATFORM=wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

# IMGUR_API_KEY
. "$HOME/.secrets"
