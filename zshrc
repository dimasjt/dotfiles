# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.

source ~/.bash_profile
export ZSH="/Users/dimasjt/.oh-my-zsh"

plugins=(git ruby bundler capistrano npm nvm docker git-flow)

# ZSH_TMUX_AUTOSTART=true

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv nvm)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

source $ZSH/oh-my-zsh.sh

eval "$(pyenv init -)"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

alias redis_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"

alias dc="docker-compose"
alias dc-act="dc -p activities"
alias t="/usr/local/Cellar/tilt/0.10.23/bin/tilt"
alias rc="rails c"
alias rs="rails s"
alias rdm="rails db:migrate"
alias rdr="rails db:rollback"
alias gpm="git pull origin master"
alias gpmr="git pull origin master --rebase --autostash"

[[ -s "/Users/dimasjt/.gvm/scripts/gvm" ]] && source "/Users/dimasjt/.gvm/scripts/gvm"

# GOLANG
export GOPATH=$HOME/Dimas/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$HOME/Dimas/bin:$PATH"

alias gc_deals="gcloud config set project discount-pass && gcloud config set compute/region asia-southeast1"
alias gc_deals_prod="gc_deals && gcloud container clusters get-credentials production --zone asia-southeast1 && kubectl config current-context"
alias gc_deals_stg="gc_deals && gcloud container clusters get-credentials staging --zone asia-southeast1 && kubectl config current-context"
alias gc_activity="gcloud config set project deals-activity && gcloud config set compute/region asia-southeast1"
alias gc_activity_prod="gc_activity && gcloud container clusters get-credentials production --zone asia-southeast1 && kubectl config current-context"
alias gc_activity_stg="gc_activity && gcloud container clusters get-credentials staging --zone asia-southeast1 && kubectl config current-context"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dimasjt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dimasjt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dimasjt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dimasjt/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export DENO_INSTALL="/Users/dimasjt/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# mysql
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

alias reset_db="./Users/dimasjt/Dimas/projects/intropath/intro-backend/bin/rake test_server:prepare &&"

export EDITOR="code --wait"

alias act_encrypt_stg="gcloud kms encrypt --location global --keyring deals-activity-keyring --key cloudbuild --plaintext-file k8s/staging/secrets/secrets.yaml --ciphertext-file k8s/staging/secrets.yaml.encrypted --project deals-activity"
alias act_encrypt_prod="gcloud kms encrypt --location global --keyring deals-activity-keyring --key cloudbuild --plaintext-file k8s/production/secrets/secrets.yaml --ciphertext-file k8s/production/secrets.yaml.encrypted --project deals-activity"
alias act_encrypt="act_encrypt_stg && act_encrypt_prod"

alias act_decrypt_stg="gcloud kms decrypt --location global --keyring deals-activity-keyring --key cloudbuild --plaintext-file k8s/staging/secrets/secrets.yaml --ciphertext-file k8s/staging/secrets.yaml.encrypted --project deals-activity"
alias act_decrypt_prod="gcloud kms decrypt --location global --keyring deals-activity-keyring --key cloudbuild --plaintext-file k8s/production/secrets/secrets.yaml --ciphertext-file k8s/production/secrets.yaml.encrypted --project deals-activity"
alias act_decrypt="act_decrypt_stg && act_decrypt_prod"

alias pg="password-generator -l 12 -c"


export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"
rbenv shell 2.7.4

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_SDK="$HOME/Library/Android/sdk"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

[ -s "/Users/dimasjt/.jabba/jabba.sh" ] && source "/Users/dimasjt/.jabba/jabba.sh"

# flutter
export PATH="/Users/dimasjt/Dimas/flutter-sdk/bin:$PATH"
export PATH="/Users/dimasjt/Dimas/android-sdk/cmdline-tools/bin:$PATH"
export PATH="/Users/dimasjt/Dimas/android-sdk/platform-tools:$PATH"
