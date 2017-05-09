#!/bin/sh

docker run -it \
    --env="DISPLAY=$DISPLAY" \
	--env="USER=$SUDO_USER" \
    --workdir="/home/$SUDO_USER" \
    --volume="/home/$SUDO_USER:/home/$SUDO_USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--privileged \
	debian-pymakr
