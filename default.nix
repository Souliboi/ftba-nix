{ stdenv
, lib
, autoPatchelfHook
, glibc
, libgobject
, libglib
, libgio
, libnns3
, libnssutil3
, libsmime3
, libnspr4
, libatk
, libatk-bridge
, libcups
, libdbus
, libdrm
, libgtk-3
, libpango
, libcairo
, libm
, libX11
, libXcomposite
, libXdamage
, libXext
, libXfixes
, libXrandr
, libgbm
, libexpat
, libxcb
, libxkbcommon
, libasound
, libatspi
, libgcc
, jdk17
, jdk8
}:

stdenv.mkDerivation rec {
  name = "ftb-app";
  version = "202310071959_918caed003";
}
