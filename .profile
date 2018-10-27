##
# Homebrew
##
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

##
# Homebrew bash completion
##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=${PATH}:/usr/local/mysql/bin/

# set intereactive mode to Vi
set -o vi

# color options
alias ls='ls -G'
GREEN="$(tput setaf 10)"
CYAN="$(tput setaf 14)"

#prompt
PS1='${GREEN}[\t] [\u@\h \W]\$ ${CYAN}'

# Add three lines to your shell startup file (.bashrc, .profile, etc.) to set the location where the virtual environments should live, the location of
# your development project directories, and the location of the script installed with this package:
# After editing it, reload the startup file (e.g., run source ~/.bashrc).

export PYTHONSTARTUP=$HOME/.pythonrc.py
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/PyProBluePrints
source /usr/local/bin/virtualenvwrapper.sh

#Firefox
export PATH="$PATH:/Applications/Firefox.app/Contents/MacOS/"

# Put openssl in PKG_CONFIG_PATH
export PKG_CONFIG_PATH="$PATH:/usr/local/opt/openssl/lib/pkgconfig:/usr/lib/pkgconfig/:/usr/local/lib/pkgconfig/"

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
# Go src
alias GOS='cd $GOPATH/src'

# Isomorphic Go demo: Environment variable used by web app declaring where it resides
# Allows web app to determine where resources such as static assets (css, js, images, etc) are located
export IGWEB_APP_ROOT=${GOPATH}/src/github.com/EngineerKamesh/igb/igweb

# Dart
# Path for dart_language_server
# https://pub.dartlang.org/packages/dart_language_server
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Path for protoc compiler that is used to generate gRPC service code.
export PATH=$PATH:$PATH:$HOME/protoc-3.6.1-osx-x86_64/bin

# openssl is keg-only, which means it was not symlinked into /usr/local,
# because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries.
# See brew info openssl.
# Add openssl in PATH.
export PATH="/usr/local/opt/openssl/bin:$PATH"
# For compilers to find openssl.
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
# For pkg-config to find openssl.
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# In order for Terraform to be able to make changes in your AWS account, you will need to
# set the AWS credentials for the created IAM user as the environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
# export AWS_ACCESS_KEY_ID=(your access key id)
# export AWS_SECRET_ACCESS_KEY=(your secret access key)

# Variable calling tmux script for basic development environment
export ALPHAMUX=$HOME/./alphamux.sh
# Variable calling tmux script for new development window
export WINMUX=$HOME/./winmux.sh
# Kill tmux sessions
alias TKS="tmux kill-session"
alias TKW="tmux kill-window"

# Variable calling brew script for update, upgrade, cleanup, checking for missing dependencies and system problems
export BS=$HOME/./brewstrap.sh

# Vim 
export VIMRUNTIME=/usr/local/Cellar/macvim/8.1-151/MacVim.app/Contents/Resources/vim/runtime
export MYVIMRC=$HOME/.vimrc

# Start postgres server
alias STARTPG="brew services start postgresql"
alias STOPPG="brew services stop postgresql"

# Alias to cd through parent directories
alias cd1="cd ../"
alias cd2="cd ../../"
alias cd3="cd ../../../"
alias cd4="cd ../../../../"
alias cd5="cd ../../../../../"
alias cd6="cd ../../../../../../"
alias cd7="cd ../../../../../../../"
alias cd8="cd ../../../../../../../../"
alias cd9="cd ../../../../../../../../../"

# Alias to clear terminal screen
alias cl="clear"

# Alias for man
alias ?="man"

# ET find home
alias ~="cd ~"

# Alias cd previous directory
alias _="cd -"

# Alias to launch mysqlworkbench
alias mysqlworkbench="open -a mysqlworkbench"
