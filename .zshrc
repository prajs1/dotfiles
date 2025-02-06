#Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

#Download Zinit if it's notyet downloaded
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

#Source/load Zinit
source "${ZINIT_HOME}/zinit.zsh"

#Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# The following lines were added by compinstall and modified by me in some cases

zstyle ':completion:*' auto-description 'Specify: %d'
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s, %l
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt beep

#Completion styling
#For completion to igonore case sensitinve
zstyle ':compeletion:*' matcher-list 'm:{a-z}={A-Za-z}'
#Enable directory preview on completions
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Finding out what system is in use
case "$(uname -s)" in
  Darwin*) export SYSTEM_USED=macos
  ;;
  Linux*) export SYSTEM_USED=linux
  ;;
  Linux*Microsoft*) export SYSTEM_USED=linux
  ;;
esac


# Oh My Posh
export PATH=$PATH:/home/$(whoami)/.local/bin
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/my.toml)"

if [[ $SYSTEM_USED == "linux" ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ $SYSTEM_USED == "macos" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#Keybindings
if [ -f  /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

bindkey -v
bindkey '^f' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

#Aliases
source ~/.aliases
source ~/.config/work/.work.zsh

export PATH="$PATH:/home/$(whoami)/.dotnet/tools"
export DOTNET_ROOT=/snap/dotnet-sdk/current
export SHELL=/bin/zsh

#Shell integrations
eval "$(fzf --zsh)"
