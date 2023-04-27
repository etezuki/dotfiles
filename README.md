# dotfiles
Dotfiles

TODO:

* AwesomeWM [https://github.com/awesomeWM/awesome]
* picom (fork) https://github.com/jonaburg/picom
* SDDM [https://github.com/sddm/sddm]
* SDDM theme: [https://framagit.org/MarianArlt/sddm-sugar-candy]

Installation from Debian 11.6 netinst (NO DE)

su -
apt install sudo
usermod -aG sudo hmrh

*reboot*

sudo apt install xorg build-essential git meson cmake dkms linux-headers-$(uname -r) python3-venv

[PICOM]
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev libpcre++-dev

git clone https://github.com/jonaburg/picom
cd picom
meson --buildtype=release . build
ninja -C build
# To install the binaries in /usr/local/bin (optional)
sudo ninja -C build install

[AwesomeWM]
sudo apt install awesome

[SDDM]
sudo apt install sddm qml-module-qtquick-layouts qml-module-qtgraphicaleffects qml-module-qtquick-controls2 libqt5svg5

