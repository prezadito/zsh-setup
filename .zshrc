# If you come from bash you might have to change your $PATH.
# Add Homebrew to PATH (common on macOS)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:$HOME/.local/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Auto-update configuration
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 7    # check for updates weekly

# Performance optimizations
DISABLE_UNTRACKED_FILES_DIRTY="true"  # Faster git status for large repos
COMPLETION_WAITING_DOTS="true"       # Show progress dots

# History configuration
HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000

# Preferred editor configuration
if command -v code >/dev/null 2>&1; then
    export EDITOR='code -w'
elif command -v nvim >/dev/null 2>&1; then
    export EDITOR='nvim'
elif command -v vim >/dev/null 2>&1; then
    export EDITOR='vim'
else
    export EDITOR='nano'
fi

# Language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Plugin configuration with installation checks
plugins=(git)

# Check and add zsh-autosuggestions if available
if [[ -d "${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-autosuggestions" ]]; then
    plugins+=(zsh-autosuggestions)
else
    echo "Note: zsh-autosuggestions not found. Install with:"
    echo "git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi

# Check and add zsh-syntax-highlighting if available
if [[ -d "${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting" ]]; then
    plugins+=(zsh-syntax-highlighting)
else
    echo "Note: zsh-syntax-highlighting not found. Install with:"
    echo "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
fi

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load old configuration if it exists
[[ -f "$HOME/.zshrc.pre-oh-my-zsh" ]] && source "$HOME/.zshrc.pre-oh-my-zsh"

# Customize agnoster prompt - hide machine info for cleaner look
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias openzs="$EDITOR ~/.zshrc"
alias sourcezs="source ~/.zshrc"

# macOS specific aliases
alias port="lsof -i"
alias stop="kill -9"
alias finder="open ."
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la"
alias la="ls -A"
alias l="ls -CF"

# Git aliases (additional to oh-my-zsh git plugin)
alias gst="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gp="git push"
alias gl="git pull"

# Function to quickly cd to a directory and list contents
cdl() {
    cd "$1" && ls -la
}

# Function to create directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}
