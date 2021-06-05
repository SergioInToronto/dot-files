gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 28
gsettings set org.gnome.desktop.peripherals.keyboard delay 280
# note: In Ubuntu 20.04 this doesn't work. Go to Settings -> Universal Access -> Repeat Keys -> Adjust the sliders in the GUI :'(

sudo apt install gimp vim vlc wget curl httpie

# Install closed-source bits like MSCore fonts and thumbnail generators for non-open formats like MP4/mkv
sudo apt install -y ubuntu-restricted-extras

sudo apt install gnome-tweaks -y
# swap esc with capslock

# Install Steam
pushd /tmp/ && wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb && dpkg -i ./steam.deb && popd

# Uninstall totem, amazon, gnome accounts, etc.

# Now find a nice wallpaper
