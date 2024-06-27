> [!CAUTION]
> As of 18th June 2024, I have migrated from Arch to NixOS, rendering this repository archived.
>
> NixOS is a Linux distribution that allows declaratively defining the entire system and with
> the help of some extra tools, such as home-manager, it's possible to declare configurations for
> various programs in my home directory in this way too.
>
> This allows me to have all of my system configuration in a single repository from which I can
> completely reproduce this system on any computer, down to specific versions of every installed
> program / dependency. For obvious reasons, this is far superior to the installation scripts in
> this repository.
>
> If you wish to take a look at my NixOS configuration, you can find the repository here:
>
> - <https://github.com/ItsDrike/nixdots>
> - <https://git.itsdrike.com/ItsDrike/nixdots> (mirror)

# Dotfiles

Welcome to my personal dotfiles repository! Simply put, this is a complete collection of my system configuration files,
mostly just here for my personal use, but of course, you're free to take anything you like (as long as you follow the
license).

## Images

What everyone is here for!

**My WM and EWW bar**
https://user-images.githubusercontent.com/20902250/202879948-f5d79f70-72ff-4cae-97aa-da9a863ac688.mp4

**Prompt timing showcase**
![image](https://user-images.githubusercontent.com/20902250/202880140-78dc3f65-ea5d-4155-819b-39bd30d2b31e.png)

**Terminal color scheme showcase**
![image](https://user-images.githubusercontent.com/20902250/117699472-69ab5d80-b1b4-11eb-85a8-2b039bc1599a.png)

**Unknown command package handler**
![image](https://user-images.githubusercontent.com/20902250/202880240-c5f975cb-bedb-459b-9a38-fa70a454e0a6.png)

## Features

- Full fledged ZSH configuration without relying on oh-my-zs
    - oh-my-zsh configuration is also supported, but it is off by default, adjust [`.zshrc`](./home/.config/zsh/.zshrc)
      to enable it
    - While you can enable the omz support, it's not at all necessary, as my configuration already handles most of the basic config, and also adds a ton of cool features
- Fully custom terminal prompt with a lot of neat features, such as CWD shortening, showing git status, seeing how long
  a command ran for, and showing non-zero exit codes [prompt](./home/.config/shell/prompt)
- A ton of neat and helpful [aliases](./home/.config/shell/aliases) and [functions](./home/.config/shell/functions)
  (probably too many for most people, you should adjust these to your needs)
- Sensible pre-defined environment variables, allowing for
    - Colorful man pages using `LESS_TERMCAP`, or if `bat` is installed, using it as `MANPAGER` directly
    - XDG user directory related variables, making programs use the proper directories, avoiding clutter in `$HOME`
- Tons of handy scripts for automatic common tasks:
    - [`incremental-backup`](./root/usr/local/bin/incremental-backup): Simple and minimalistic way to utilize rsync for
      fast and efficient backups (utilizing hard-links), for any directories, or even for the entire system.
    - [`auto-chroot`](./root/usr/local/bin/auto-chroot): Quick way to chroot into any accesible linux system, without
      typing the repetetive mount/umount commands. Allows for selecting user and shell to be used.
    - [`tamper-check`](./root/usr/local/bin/tamper-check): Script that uses checksums to verify that contents of
      specified system-critical files haven't changed (be aware that they will obviously change if they're updated)
    - [`gh-notification`](./home/.local/bin/scripts/gui/gh-notification): Script expected to be ran as cron-job every
      few minutes, checking for new github notifications using github CLI (requies meiji163/gh-notify gh-cli extension)
      and sending them out as actual desktop notifications.
    - [`brightness`](./home/.local/bin/scripts/gui/brightness): Script to quickly change the screen brightness
    - [`setbg`](./home/.local/bin/scripts/gui/setbg): Simple way to pick a background to be used (both for X11 and
      Wayland)
    - Tons of other things! The list is just way too long, check the rest yourself! [system
      scripts](./root/usr/local/bin), [user scripts](./home/.local/bin)

## Installation

Clone this repository anywhere you like
```bash
git https://github.com/ItsDrike/dotfiles
```

If you don't want to use git (running straight from newly installed OS), you can even use `curl`:
```bash
curl -LJO https://github.com/ItsDrike/dotfiles/tarball/main
```
And extract from `.tar.gz` archive with: `tar xvf [archive name]`

## Attribution

The open-source community has an incredible amount of resources that people have freely provided to others and we all
depend on these projects in many ways. This collection of configuration files is no exception, and while many of the
scripts and configuration files are my own, many others were partially, or even fully taken from other open-sourced
repositories like this.

For that reason, we'd like to thank all of these communities and projects for keeping their content open and available
to everyone, but most notably we'd like to thank and reference the significant projects that allowed this repository to
be as amazing as it is now:

- [Luke Smith's dotfiles/voidrice](https://github.com/LukeSmithxyz/voidrice)
- [Brodie Robertson's dotfiles](https://github.com/BrodieRobertson/dotfiles)
- [Brodie Robertson's scripts](https://github.com/BrodieRobertson/scripts)
- [Derek Taylor's dotfiles](https://gitlab.com/dwt1/dotfiles)
- [Mihai Fufezan's dotfiles](https://github.com/fufexan/dotfiles)
