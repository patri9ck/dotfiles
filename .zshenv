hostname=$(hostname)

if [[ $hostname == notebook ]]
then
	export WEBCAM="Integrated Camera"

	export GRAPHICS_CARD=amdgpu_bl0

	export BATTERY=BAT0
	export BATTERY_ADAPTER=ADP1
elif [[ $hostname == desktop ]]
then
	export WEBCAM="USB Web Camera"
fi

export PLAYER=spotify
export PLAYER_EXECUTABLE=spotify
export PLAYER_CLASS=spotify
export PLAYER_MAXIMUM_TITLE_LENGTH=20

export FLOATING_WINDOW_WIDTH=800
export FLOATING_WINDOW_HEIGHT=400

export UPDATES_NOTIFICATION_COUNT=10
export UPDATES_NOTIFICATION_INTERVAL=3600

export SXHKD_SHELL=sh

. $HOME/.secrets
