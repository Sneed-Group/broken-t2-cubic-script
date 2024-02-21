sudo apt install curl git
sudo apt install task-cinnamon-desktop sddm
curl -s --compressed "https://adityagarg8.github.io/t2-ubuntu-repo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/t2-ubuntu-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/t2.list "https://adityagarg8.github.io/t2-ubuntu-repo/t2.list"
sudo apt update
sudo apt install t2-kernel-script-debian
sudo update_t2_kernel
sudo apt install apple-t2-audio-config tiny-dfr zstd
wget http://nodemixaholic.com:3002/nodemixaholic/apple-broadcom-firmware-arch/raw/branch/main/apple-bcm-firmware-14.0-1-any.pkg.tar.zst
zstd -d -c apple-bcm-firmware-14.0-1-any.pkg.tar.zst | tar -xvf -
sudo cp -r ./usr/* /usr/
sudo apt install iwd
sudo sed -i 's/^wifi\.backend.*/wifi.backend=iwd/' /etc/NetworkManager/NetworkManager.conf
sudo systemctl enable --now iwd
sudo systemctl restart NetworkManager
git clone https://github.com/kekrby/t2-better-audio
cd t2-better-audio
sudo ./install.sh
cd ..
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt remove deluge* hexchat* remmina* totem* gnome-sound-recorder rhythmbox cheese
sudo apt install vlc audacity kdenlive