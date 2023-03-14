#!/bin/bash

sudo docker run --privileged \
                --name steering_node \
                -v /dev:/dev \
                --cap-add=ALL \
                --network=host \
                -v /home/putm/PUTM_DV_STEERING_COLUMN_CONTROLLER/:/home/putm \
                -v /lib/modules:/lib/modules \
                -v /run/udev:/run/udev:ro \
                -it steering