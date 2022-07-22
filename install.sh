#/bin/sh
cp custom/vim/.vim ~/ -r
cp custom/vim/.vimrc ~/
cp custom/zsh/.zshrc ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PluginInstall +qall
vim +PlugInstall +qall

python ~/.vim/bundle/youcompleteme/install.py --clang-completer
cp ~/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py ~/.vim

if [ "$WSL_INTEROP" ]
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.zshrc
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
    cp oh-my-posh/custom.omp.json $(brew --prefix oh-my-posh)/themes/
fi
