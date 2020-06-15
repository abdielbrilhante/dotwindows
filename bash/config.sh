curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io fish git vim yarn

cp -r fish ~/.config

git config --global core.editor vim
git config --global user.name "Abdiel Brilhante"

mkdir -p ~/Code
chsh -s /usr/bin/fish
set -U fish_greeting

sudo gpasswd -a $USER docker

ssh-keygen -t rsa -b 2048 -C "abdielbrilhante@${1}" -f ~/.ssh/id_rsa -N ''
