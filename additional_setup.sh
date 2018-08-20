
# First install Homebrew
# https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


## Install GNUPG (gpg)
brew install gnupg

## Then install RVM
# https://rvm.io/rvm/install

#Install keys
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Install RVM and latest stable Ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby
