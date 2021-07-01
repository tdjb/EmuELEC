# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Johannes Brandstätter (https://github.com/tdjb)

PKG_NAME="moonlight"
PKG_VERSION="7c8795febc9fad98084aa10fc5918985cbd8081e"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/irtimmer/moonlight-embedded"
PKG_GIT_CLONE_BRANCH="master"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain SDL2-git ffmpeg openssl opus avahi curl libevdev expat enet"
PKG_SHORTDESC="Moonlight"
GET_HANDLER_SUPPORT="git"
PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET=""

pre_configure_target() {
  git submodule update --init
  sed -i 's/\${CMAKE_DL_LIBS})/\${CMAKE_DL_LIBS} m)/' ../CMakeLists.txt
}
