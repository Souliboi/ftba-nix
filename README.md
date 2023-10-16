Using version: 202310071959_918caed003

[AUR Link](https://aur.archlinux.org/packages/ftba) to refer for the download link, we use the .deb because the install script does not help at all and it works fine on Arch (it is flagged as out of date, but they flagged it with the correct upcoming version, which this Repo is using)

The Sha256sum should be correct, hopefully, first time i ever used that command

The AUR package also has some useful build instructions, as this package should only be meant for Linux in regards to what directories to clean/delete and whatnot

The libraries should be included now, including JDK 8 and 17, each for versions 1.16.5 and below for JDK 8 and above for JDK 17

As commented there needs to be a let-in function to replace the string in the version from `_` to `-` because otherwise the url will respond 404

Hopefully informant Nix packages to look at for doing various thigns to build the package
- [A package using autoPatchelfhook](https://github.com/NixOS/nixpkgs/blob/ea5787ad5291ee1c131326cb9c9fec03d359edff/pkgs/misc/cups/drivers/kyodialog3/default.nix) because this repo also needs to use the autoPatchelfHook
- [Prism Launcher package](https://github.com/NixOS/nixpkgs/blob/master/pkgs/games/prismlauncher/default.nix)
- [A package fetching from a .deb file](https://github.com/NixOS/nixpkgs/blob/effd18f0703e6b12fd5d9ffa040849ec9fa1cdb9/pkgs/servers/deconz/default.nix) because this repo also fetches from a `.deb`
