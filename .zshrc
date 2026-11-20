# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# ZSH_TMUX_AUTOSTART=true
# ZSH_TMUX_AUTOCONNECT=false

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
zstyle ':omz:update' mode auto      # update automatically without asking
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
	fzf
	git
	python
	rust
	tmux
	uv
	z
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# uv venv
alias a="source .venv/bin/activate"
alias da="deactivate"

# Terminal Emacs! Why did this disappear?
alias e='emacsclient -t -a ""'

# alias i="ipython || python3 -m IPython"
# alias i="ipython"

# alias i="uv run ipython || ipython || python3 -m IPython"

alias i="ipython || uv run ipython || uvx --with matplotlib,numpy,pandas ipython"

alias is="isympy"

alias vim="nvim"

alias nv="nvim"
alias v="vim"

alias va="vim ~/.config/alacritty/alacritty.toml"
alias vc="vim ~/.aider.conf.yml"
alias vd="vim ~/.aider.conf.yml"
alias ve="vim ~/.zshenv"
alias vm="vim ~/.aider.model.settings.yml"
alias vn="vim ./notes.md"
alias vs="vim ~/.spacemacs"
alias vt="vim ~/.tmux.conf"
alias vv="vim ~/.config/nvim/init.lua"
alias vz="vim ~/.zshrc"

# alias aider='aider --chat-mode ask'
alias os="OLLAMA_CONTEXT_LENGTH=8192 ollama serve"

alias m="cmake --build build"

. "$HOME/.local/bin/env"

# Add /usr/local/texlive/2025/texmf-dist/doc/man to MANPATH.
# Add /usr/local/texlive/2025/texmf-dist/doc/info to INFOPATH.
# Most importantly, add /usr/local/texlive/2025/bin/x86_64-linux
# to your PATH for current and future sessions.
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH

######
# LLMs

# ── Aider / litellm CLIENT routing ────────────────────────────
export OLLAMA_API_BASE=http://127.0.0.1:11434   # for aider --model ollama_chat/<tag>

# vLLM self-host path — uncomment when serving locally on :8000
# export OPENAI_API_BASE=http://127.0.0.1:8000/v1
# export OPENAI_API_KEY=dummy

# LLMs
######

export QT_QPA_PLATFORM=wayland

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opencode
export PATH=$HOME/.opencode/bin:$PATH

# eigentools for pca
export PATH=$HOME/Code/EIG-7.2.1/bin:$PATH

# AdmixTools
export PATH=$HOME/Code/Genomics/AdmixTools/bin:$PATH

################################
# Alacritty Syncing with the Sun

# _sync_alacritty_theme() {
#
#   local cache="$HOME/.cache/alacritty-theme/today"
#   local today="$(date +%Y-%m-%d)"
#
#   if [[ ! -f "$cache" ]] || [[ "$(head -1 "$cache")" != "$today" ]]; then
#     mkdir -p "${cache:h}"
#     python3 - "$today" > "$cache" <<'PY'
# import sys
# from datetime import date
# from zoneinfo import ZoneInfo
# from astral import LocationInfo
# from astral.sun import sun
#
# tz = ZoneInfo("America/Los_Angeles")
# loc = LocationInfo("Seattle", "USA", "America/Los_Angeles", <lat>, <long>)
# s = sun(loc.observer, date=date.today(), tzinfo=tz)
# print(sys.argv[1])
# print(int(s["sunrise"].timestamp()))
# print(int(s["sunset"].timestamp()))
# PY
#   fi
#
#   local now=$(date +%s)
#   local sunrise=$(sed -n '2p' "$cache")
#   local sunset=$(sed -n '3p' "$cache")
#   local target
#   if (( now >= sunrise && now <= sunset )); then
#     target="$HOME/.config/alacritty/themes/themes/rose_pine_dawn.toml"
#   else
#     target="$HOME/.config/alacritty/themes/themes/rose_pine_moon.toml"
#   fi
#
#   local active="$HOME/.config/alacritty/active-theme.toml"
#   cmp -s "$target" "$active" 2>/dev/null || cp "$target" "$active"
# }
# precmd_functions+=(_sync_alacritty_theme)

# Alacritty Syncing with the Sun
################################

####################
# Private Filesystem
#
# # NOTE: If you have some private files that you access occassionally but would
# otherwise like to protect from say rogue LLM agents or poisoned dependencies
# or whatever, just in case, you can set up a private encrypted directory and
# leave it unmounted except when you need it.
#
# sudo apt install gocryptfs
# mkdir ~/.private-encrypted ~/private
# gocryptfs -init ~/.private-encrypted    # set password
# gocryptfs ~/.private-encrypted ~/private   # mount
# # ... use ~/private as a normal directory ...
# fusermount -u ~/private                  # unmount when done

_uv_auto_venv() {
  local d="$PWD"
  if [[ -n "$VIRTUAL_ENV" ]]; then
    case "$PWD/" in "${VIRTUAL_ENV:h}/"*) return ;; esac
    deactivate 2>/dev/null
  fi
  while [[ "$d" != / ]]; do
    [[ -f "$d/.venv/bin/activate" ]] && { source "$d/.venv/bin/activate"; return; }
    d="${d:h}"
  done
}
chpwd_functions+=(_uv_auto_venv)
_uv_auto_venv   # run on startup so new tmux splits activate too

alias pmount="gocryptfs ~/.private-encrypted ~/private"
alias punmount="fusermount -u ~/private"

extra-on() {
  # open via filesystem label, not the disk UUID (set once: sudo cryptsetup config --label=extra <disk>)
  [ -e /dev/mapper/extra ] || sudo cryptsetup open /dev/disk/by-label/extra extra || return
  mountpoint -q /mnt/extra || sudo mount /mnt/extra
}

extra-off() {
  if mountpoint -q /mnt/extra; then sudo umount /mnt/extra || return; fi
  if [ -e /dev/mapper/extra ]; then sudo cryptsetup close extra; fi
}

alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

export SUDO_EDITOR=nvim

