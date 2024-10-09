if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
alias vim="nvim"
alias vi="nvim"
#export TERM="screen-256color"
export LC_ALL="en_US.UTF-8"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=robbyrussell
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	#zsh-autosuggestions
	golang
	z
	zsh-syntax-highlighting
	tmux
	colored-man-pages
	fd
	vim-interaction
	sudo
	docker
	docker-compose
	bun
	direnv
)

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en_EN

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# mine



# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.




autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[magenta]%}%M %{$fg[white]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _list _oldlist _complete _match _prefix
zstyle ':completion:*' condition 1
zstyle ':completion:*' format '%d'
zstyle ':completion:*' menu select
zmodload zsh/complist
zstyle :compinstall filename '/home/xsharawi/.zshrc'
set -o HIST_IGNORE_ALL_DUPS 
autoload -Uz compinit && compinit
_comp_options+=(globdots)
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install


alias ls='ls -a --color=auto'
alias less='less -i --use-color'
alias chrome='(/opt/google/chrome/chrome & ) && disown'
alias screenkey='screenkey -t 0.5'
alias ydl='yt-dlp'
alias ll='ls -alh --color=auto'
alias grep='grep --color=auto'
alias a='./a'

alias stress='./stress.sh'

alias so='source /home/xsharawi/.zshrc'
alias ping='ping -O '

alias dcup='docker compose up'
alias dc='docker compose'

# alias cd='z'
# alias cdi='zi'
alias cdd='cd -'

alias os='nvim /etc/nixos/configuration.nix'
alias swaylock='swaylock --color 000000'

bindkey -s '^f' "tmux-sessionizer\n"
bindkey '^y' autosuggest-accept
# vi mode

fastfetch

sharawi(){
	stress solution brute
}

p(){
	cd /home/xsharawi/practice
}


vimrc(){
	vim /home/xsharawi/.config/nvim/init.lua
}

neo(){
	clear && fastfetch && vifm-pause && clear
}

zrc(){
	vim /home/xsharawi/.zshrc && so
}

trc(){
	vim /home/xsharawi/.tmux.conf
}

irc(){
	vim /home/xsharawi/.config/i3/config
}
random(){
	echo $(($RANDOM % $1 + 1))
}



bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char






# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.



# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


#insensitive auto complete

#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'




# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# vim like search with j/k

bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search


# something history something something
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# ctrl movement/deletion

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
#bindkey '~' kill-word


# duplicate
# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line





export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/home/xsharawi/.dotnet/tools:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/xsharawi/.config/composer/vendor/bin:/home/xsharawi/.config/composer/vendor/bin"


# Load Angular CLI autocompletion.
#source <(ng completion script)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/home/xsharawi/.spicetify
export PATH=$PATH:/home/xsharawi/.cargo/bin

#export PATH="$PATH:/home/xsharawi/.nvm/versions/node/v18.14.1/bin/typescript-language-server/bin"

# exporting snap
export PATH="$PATH:/snap/bin/"
export PATH="$PATH:/var/lib/snapd/snap/bin/"
#bindkey -r "~"


# fzf my beloved
export FZF_DEFAULT_COMMAND="fd --exclude node_modules --hidden --exclude .git --exclude .svn --exclude .hg"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git --exclude .svn --exclude .hg"
alias fzf="fzf --cycle"
_fzf_compgen_path() {
  fd --hidden --exclude .git --exclude .svn --exclude .hg . "$1"
}

export PATH=$PATH:$HOME/bin


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
#    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
#fi
#export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
#export PATH="$PATH:$GEM_HOME/bin"




# Load Angular CLI autocompletion.
#   FUCK ANGULAR
#source <(ng completion script)

# Created by `pipx` on 2024-02-11 09:20:20
export PATH="$PATH:/home/xsharawi/.local/bin"

autoload -U bashcompinit
#eval "$(register-python-argcomplete pipx)"
export PATH="$PATH:/usr/local/go/bin"
eval "$(zoxide init zsh --cmd cd)"

source <(fzf --zsh)
eval "$(direnv hook zsh)"


#[ -z "$TMUX" ] && export TERM=xterm-256color
