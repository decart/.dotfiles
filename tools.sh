#!/bin/bash

source utils.sh
release=$(release_name)

case $release in

ubuntu | neon | linuxmint)
	source "tools/ubuntu.sh"
	;;

esac

source tools/flatpak.sh
