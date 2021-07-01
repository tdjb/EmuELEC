#!/bin/bash

# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Johannes Brandstätter (https://github.com/tdjb)

# Source predefined functions and variables
. /etc/profile

gptokeyb 1 moonlight &

moonlight -platform sdl \
    -codec h254 \
    -mapping /usr/config/SDL-GameControllerDB/gamecontrollerdb.txt \
    -app Steam \
    stream

killall gptokeyb &

exit $?
