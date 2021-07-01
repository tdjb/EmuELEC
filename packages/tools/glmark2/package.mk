# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Johannes Brandstätter

PKG_NAME="glmark2"
PKG_VERSION="2021.02"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/glmark2/glmark2"
PKG_URL="https://github.com/glmark2/glmark2/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_TOOLCHAIN="meson"
PKG_MESON_OPTS_TARGET="-Dflavors=drm-glesv2"
