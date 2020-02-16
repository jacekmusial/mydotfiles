# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH="$PATH:/usr/lib/dart/bin"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias upgrade='sudo apt-get upgrade'
alias update='sudo apt-get update'
alias remove='sudo apt-get remove'
alias install='sudo apt-get install'
alias git-local-repo-set-hidden-email-for-github="git config --local user.name \"Jacek Musiał\" && git config --local user.email \"7474972+jacekmusial@users.noreply.github.com\""

export PATH="/home/jacekmusial/bin/Sencha/Cmd:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
export CATALINA_HOME="/home/jacekmusial/workspace/apache-tomcat-7.0.92"

# Path to your oh-my-zsh installation.
export ZSH="/home/jacekmusial/.oh-my-zsh"

# load zgen
source "/home/jacekmusial/bin/antigen.zsh"
antigen bundle matthieusb/zsh-sdkman
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	dotenv
	bundler
	docker
	vagrant
	git-extras
)

source $ZSH/oh-my-zsh.sh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jacekmusial/.sdkman"
[[ -s "/home/jacekmusial/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jacekmusial/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
