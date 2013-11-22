# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dieter"
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gem git cake svn cap npm debian heroku hub)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Load keys into keychain if keychain file exists
if type keychain > /dev/null
then
  keychain id_rsa
  source ~/.keychain/`uname -n`-sh
fi

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/X11R6/bin
export PATH=/usr/local/git/bin:$PATH

export PATH=/usr/local/composer/bin:$PATH

autoload bashcompinit
bashcompinit

# DNS Flush
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# Node Version Manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"  # This loads NVM
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Display exit code
export RPROMPT='[%?]'

# Hub
export GITHUB_USER="koenpunt"
eval "$(hub alias -s)"

# AWS credentials
export EC2_HOME=$HOME/.aws
export EC2_PRIVATE_KEY=$(echo $HOME/.aws/pk-*.pem)
export EC2_CERT=$(echo $HOME/.aws/cert-*.pem)
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws-credential-file.txt
export PATH="$EC2_HOME/bin:$PATH"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# PHP OSX
export PATH=/usr/local/php5/bin:$PATH
