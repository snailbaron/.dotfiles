Bare repo setup:
```
git clone --bare https://github.com/snailbaron/.dotfiles.git .dotfiles

alias config='git --work-tree ~ --git-dir ~/.dotfiles'
echo "alias config='git --work-tree ~ --git-dir ~/.dotfiles'" >> ~/.bashrc

config config status.showUntrackedFiles no
config config remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'
config fetch
config checkout master
```
