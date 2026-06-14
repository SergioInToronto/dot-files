# Fix or improve thumbnailing support
# Taken from https://github.com/Diolinux/nautilus-thumbnails-ubuntu-fix
sudo apt install libdvdnav4 libdvd-pkg gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg

# If still broken:
killall nautilus
mv /home/sergio/.cache/thumbnails /tmp/
# and try again
