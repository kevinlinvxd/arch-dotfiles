# dotfiles

## Introduction

This repository serves as a way for me to keep track of and maintain my configuration files on Linux. If I ever want to switch to a new distro or lose my data, I have an easy way to get to a semi-working state.

![My Arch Neofetch](https://raw.githubusercontent.com/kevinlinvxd/arch-dotfiles/master/misc/arch-neofetch.png)

## Contents

- all `vim` configuration files, including various plugins and my `.vimrc`
- all my shell configuration in `.zshrc`
- all my configurations for my Arch BSPWM install
  - including `polybar`, `dunst`, and `rofi`
  
## Installation

#### Scripts

At some point, I may write up a simple script to assist with installing these various configuration files. For now, it can be done the manual way.

1. Clone the repository
```
git clone git@github.com:kevinlinvxd/dotfiles.git
```

2. Change into the repo directory
```
cd dotfiles
```

3. Move the config files to new .config folder
```
cp -r .config/{alacritty,bspwm,dunst,neofetch,polybar,rofi,sxhkd} ~/.config
```

4. Give exec perms to scripts and some files
```
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/scripts/*
chmod +x ~/.config/bspwm/bspwmrc
```

## License


Licensed under the MIT License. 2022 @ Kevin Lin. All files are free to use and can be distributed under terms in [LICENSE](LICENSE).
