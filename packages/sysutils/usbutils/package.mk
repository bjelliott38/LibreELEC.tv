################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="usbutils"
PKG_VERSION="008"
PKG_SHA256="44741af0bae9d402a0ef160a29b2fa700bb656ab5e0a4b3343d51249c2a44c8c"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.linux-usb.org/"
PKG_URL="http://kernel.org/pub/linux/utils/usb/usbutils/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libusb systemd"
PKG_SECTION="system"
PKG_SHORTDESC="usbutils: Linux USB Utilities"
PKG_LONGDESC="This package contains various utilities for inspecting and setting of devices connected to the USB bus. Requires a kernel version including usbdevfs support - and this usbdevfs mounted to /proc/bus/usb."

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin/lsusb.py
  rm -rf $INSTALL/usr/bin/usbhid-dump
}
