# dotfiles

* DE: XFCE4
* WM: AwesomeWM
* Terminal: kitty/alacritty
* Editor: nvim

XFCE is quite lightweight and I don't have the time to setup polybar/audio/network/laptop related stuff.

Installation from Debian 11.6 netinst (DE = xfce4)

<br>

### Post install

##### Add user to sudoers
    su -
    apt install sudo
    usermod -aG sudo [user]
*reboot*

<br>

##### Install some dependencies we need later
    sudo apt install build-essential git meson cmake dkms linux-headers-$(uname -r) python3-venv

<br>

##### Picom (animation fork) build/install

Dependencies

    sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev libpcre++-dev

build/install

    git clone https://github.com/jonaburg/picom
    cd picom
    meson --buildtype=release . build
    ninja -C build
    sudo ninja -C build install

<br>

##### AwesomeWM
    sudo apt install awesome

<br>


##### Alacritty
    sudo apt install curl git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
    
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    (option 1)
    
    source $HOME/.cargo/env
    rustup override set stable
    rustup update stable
    
    git clone https://github.com/alacritty/alacritty.git
    cd alacritty/
    cargo build --release
    infocmp alacritty
    sudo cp target/release/alacritty /usr/local/bin
    sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
    sudo desktop-file-install extra/linux/Alacritty.desktop
    sudo update-desktop-database

###### Alacritty catppuccin theme
    git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin


##### fzf
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

##### ripgrep
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
    sudo dpkg -i ripgrep_13.0.0_amd64.deb

##### fd
https://github.com/sharkdp/fd#installation

#### TODO:
* xfce4 settings after Debian 11 install
* zsh/oh-my-zsh installation instructions
* xfce4-panel-profiles installation instructions
* kitty/nvim native binaries
* JetBrainsMono Nerd Font installation
* Different configurations for 1080p/1440p/4K
* Memory usage profiling and optimization

