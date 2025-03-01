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

Might want to use a separate private key for this repo specifically:
```
config config --local core.sshCommand 'ssh -i ~/.ssh/<personal private key>'
```

For pushing via ssh:
```
config remote set-url --push origin git@github.com:snailbaron/.dotfiles.git
```
