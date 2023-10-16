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

let
  # somehow replace $(version) with $(pkgver) 
  # [replace from the ftba AUR package is ${pkgver//_/-}]
  # and i have no idea how to do this
in

stdenv.mkDerivation rec {
  name = "ftb-app";
  version = "202310071959_918caed003";

  src = fetchurl {
    url = "htpps://apps.modpacks.ch/FTBApp/release/$(version)/FTBA_linux_$(version).deb";
    sha256 = "d795701bc1481e9e5797cd4e4026e01cb7e6f79990244483e366eb125e983180";
  };

  nativeBuildInputs = [ autoPatchelfHook ];

  meta = with lib; {
    description = "FTB App for Linux to manage your Minecraft Modpacks";
    homepage = "https://www.feed-the-beast.com/ftb-app";
    platforms = with platforms; linux;
    maintainers = with maintainers; [ souliboi ];
  };
}
