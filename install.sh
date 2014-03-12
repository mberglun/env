ENVDIR=$HOME/.env

# Setup .env and dot files
test -d $ENVDIR || git clone git://github.com/mberglun/env.git $ENVDIR
find $ENVDIR -type f -name .\* -exec ln -is {} $HOME \;

# Setup vim
d=~/.vim/bundle
mkdir -p $d
test -d $d/neobundle.vim || git clone git://github.com/Shougo/neobundle.vim $d/neobundle.vim
vim +NeoBundleInstall! +q
