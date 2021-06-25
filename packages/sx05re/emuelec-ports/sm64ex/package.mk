# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Johannes Brandstätter
# https://github.com/sm64pc/sm64ex

PKG_NAME="sm64ex"
PKG_VERSION="57c203465b2b3eee03dcb796ed1fad07d8283a2c"
PKG_REV="1"
PKG_ARCH="any"
PKG_SITE="https://github.com/sm64pc/sm64ex"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain SDL2-git glew"
PKG_LONGDESC="Game port of 'Super Mario 64' using SDL2"
PKG_TOOLCHAIN="make"
PKG_MAKE_OPTS_TARGET="TARGET_RPI=1 CROSS=aarch64-libreelec-linux-gnueabi-"
GET_HANDLER_SUPPORT="git"

# TODO first attempt always fails with "ld: cannot find -laudiofile"

pre_make_target() {
# TODO baseroms eu,jp could be detected and the correct VERSION flag set
# TODO replace SDLCONFIG with pkg-config, which currently is provided by the full Makefile copy
#sed -i "s/SDLCONFIG…/PKGCONFIG…/" $PKG_BUILD/Makefile
#sed -i "s/\$(CROSS)sdl2-config/TODO/" $PKG_BUILD/Makefile
echo
}

makeinstall_target() {
mkdir -p $INSTALL/usr/bin
cp $PKG_BUILD/build/us_pc/sm64.*.arm $INSTALL/usr/bin/sm64ex
}
