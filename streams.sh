#!/bin/sh
. ~/.cache/wal/colors.sh
folder=${HOME}/Videos/streams
alias dmenu="dmenu -fn Unifont:pixelsize=24 -nb \"$color0\" -nf \"$color15\" \
	-sb \"$color1\" -sf \"$color15\""
alias ls="command ls -1 ${folder}/"
alias execute="ls | dmenu"
url=${folder}/"`execute`"
mpv --playlist="$url"
