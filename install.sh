ENVDIR=$HOME/.env

# Setup .env and dot files
test -d $ENVDIR || git clone git://github.com/mberglun/env.git $ENVDIR
find $ENVDIR -type f -name .\* -exec ln -is {} $HOME \;

