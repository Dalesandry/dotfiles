#!/bin/bash

IDENTITY="dd-arduino"
USERNAME="dd-container"

CONTAINER=$(docker ps -alqf "name=$IDENTITY")

if [[ -z $CONTAINER ]]; then
    CONTAINER=$(docker images --filter "label=identity=$IDENTITY" -q)
    docker run -it \
        --name="dd-arduino" \
        --device=/dev/ttyACM0 \
        -v ~/.ssh:/home/$USERNAME/.ssh:ro \
        -v ~/.config:/home/$USERNAME/.config \
        -v /home/dd-user/Projects/:/home/$USERNAME/Projects \
        $CONTAINER

else
    docker start $CONTAINER
    docker attach $CONTAINER
fi
