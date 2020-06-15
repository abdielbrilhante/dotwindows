sudo touch /etc/wsl.conf
sudo sh -c 'echo "[network]\ngenerateResolvConf = false" > /etc/wsl.conf'

sudo rm -f /etc/resolv.conf
sudo touch /etc/resolv.conf
sudo sh -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'

sudo apt update
sudo apt upgrade
