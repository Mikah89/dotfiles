# i3 configuration

## What's needed
* [polybar](https://aur.archlinux.org/packages/polybar/) (AUR package or manually compile it)
* [compton](https://www.archlinux.org/packages/community/x86_64/compton/) (compositor that adds transparency and some smooth effects)
### Fonts
These will probably be needed to render unicode chars on the config file:
* [siji](https://aur.archlinux.org/packages/siji-git/)
* [ttf-unifont](https://aur.archlinux.org/packages/ttf-unifont/)

## Steps
* Put i3.script.sh in `~/.bin` folder. For a different folder change the details in the i3 config file.
* The remaining configuration file (both i3 and polybar) should go to their appropriate configuration folder. It my vary on your system.
    * Polybar in my case is in my `~/.config/polybar/` folder
