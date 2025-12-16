export DEBIAN_FRONTEND=noninteractive
export INSTALL_ZSH=true
export USERNAME=`whoami`

## udpate and install required packages
sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \ 
  sudo \
  openssh-client \ 
  less \ 
  iproute2 \ 
  procps \ 
  wget \
  unzip \
  apt-transport-https \
  lsb-release 

  #Install Font
  wget https://github.com/be5invis/Iosevka/releases/download/v33.3.6/PkgTTC-SGr-IosevkaSlab-33.3.6.zip
  sudo unzip PkgTTC-SGr-IosevkaSlab-33.3.6.zip -d /usr/share/fonts
  sudo fc-cache -f -v 

  # install & configure Zsh
  if [ "$INSTALL_ZSH" = "true" ]
  then
    sudo apt-get install -y \
    fonts-powerline \
    zsh

    cp -f ~/dotfiles/.zshrc ~/.zshrc
    chsh -s /usr/bin/zsh $USERNAME
    wget wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    echo "source $PWD/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
fi

#Cleanup 
sudo apt-get autoremove -y
sudo apt-get autoremove -y 
sudo rm -rf /var/lib/apt/lists/*

