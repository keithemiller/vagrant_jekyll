apt-add-repository ppa:brightbox/ruby-ng
apt-get update

apt-get install -y ruby2.4 ruby2.4-dev build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem update --system
gem install jekyll bundler
