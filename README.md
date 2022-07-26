# zsh 설치

## oh-my-zsh 설치
### 사용할 플러그인은 "~/.oh-my-zsh/plugins"에 git clone "Plugin URL"

## color-scheme은 윈도우 터미널에서 설정
### "https://windowsterminalthemes.dev/" 에서 마음에 드는걸 추가할것

## Vundle 설치
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Vim-Plug 설치
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## vimrc 및 zshrc 설정파일 복사
    cp custom/vim/* ~/.vim/
    cp custom/zsh/.zshrc ~/.zshrc

## vundle의 플러그인 설치
    vim +PluginInstall +qall

## vim-plug의 플러그인 설치
    vim +PlugInstall +qall

## youcompleteme 빌드
### 이때 python 버전이 맞지 않을경우 진행되지 않기때문에 vim에 맞는 파이썬 버전으로 빌드해야한다.
### 빌드 후 third~ 디렉토리에 생성되는 .ycm_extra~~.py 파일을 ~/.vim 디렉토리 밑에 복사한다
### 또한 빌드 후 사용중 final_flag 관련 오류가 나올시 전역변수에 대한 오류이므로 .ycm_extra_~~.py 파일에서 수정 필요
### Plug를 이용해서 플러그인 설치시 컴파일 하는 방법도 있음
    ~/.vim/bundle/youcompleteme/install.py --clang-completer

## Powerline 폰트 설치
### d2coding 폰트 혹은 Nerd-Font 설치
### airline의 Default format 사용시 문자열 인코딩 format이 없을 경우 깨져보임
    https://github.com/naver/d2codingfont
    https://www.nerdfonts.com/

## home-brew 설치
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
    test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.zshrc

## oh-my-posh 설치
    brew install jandedobbeleer/oh-my-posh/oh-my-posh

## oh-my-posh 테마 복사
    cp custom/oh-my-posh/theme/custom.omp.json $(brew --prefix)/themes/
