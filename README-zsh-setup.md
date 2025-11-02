# 🚀 Terminal Setup Guide: Optimized Zsh Configuration

Welcome to your new terminal environment! This guide will help you understand and make the most of your optimized Zsh configuration with Oh My Zsh.

## 📋 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Features & Tools](#features--tools)
- [Available Commands & Aliases](#available-commands--aliases)
- [Development Workflows](#development-workflows)
- [Troubleshooting](#troubleshooting)
- [Customization](#customization)

## 🎯 Overview

Your terminal is configured with:
- **Oh My Zsh** framework for enhanced shell experience
- **Agnoster theme** with clean, informative prompts
- **Development tools** for Java, Python, Node.js, and more
- **Smart plugins** for autosuggestions and syntax highlighting
- **Performance optimizations** for faster startup and usage

## 📦 Prerequisites

Before using this configuration, ensure you have the following installed:

### Required Tools
```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/install.sh)"

# Install required plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Development Tools
```bash
# Essential development tools
brew install git node python java maven pyenv nvm

# Optional but recommended
brew install --cask visual-studio-code intellij-idea
```

### Font Setup (for Agnoster theme)
Install a Powerline-compatible font:
```bash
# Install Fira Code (recommended)
brew install --cask font-fira-code

# Or install Meslo LG (alternative)
brew install --cask font-meslo-lg-nerd-font
```

Then configure your terminal to use the installed font.

## 🛠️ Installation

1. **Backup existing configurations:**
   ```bash
   cp ~/.zshrc ~/.zshrc.backup
   cp ~/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh.backup 2>/dev/null || true
   ```

2. **Apply the new configurations:**
   - Replace your `~/.zshrc` with the optimized version
   - Replace your `~/.zshrc.pre-oh-my-zsh` with the optimized version

3. **Reload your shell:**
   ```bash
   source ~/.zshrc
   ```

## ✨ Features & Tools

### 🎨 Shell Enhancements
- **Smart autocompletion** with `TAB` key
- **Command suggestions** based on history (arrow keys to accept)
- **Syntax highlighting** for commands
- **Git integration** showing branch and status in prompt
- **Fast directory navigation** with shortcuts

### 🛠️ Development Environment

#### Java Development
- **Maven 3.9.6** configured and ready
- **JDK 21** set as default
- **SDKMAN** for managing multiple Java versions

#### Python Development
- **pyenv** for Python version management
- **Optimized PATH** for Python tools
- **Virtual environment** support

#### Node.js Development
- **NVM** for Node.js version management
- **Node.js 20** configured
- **npm** shortcuts and aliases

#### Other Tools
- **Git** with enhanced prompt integration
- **GitHub Copilot CLI** integration
- **IntelliJ IDEA** command-line tools
- **VS Code** integration
- **LM Studio CLI** for AI development

## 🎯 Available Commands & Aliases

### 📁 Navigation & File Management
```bash
# Quick navigation
..          # Go up one directory
...         # Go up two directories
finder      # Open current directory in Finder
ll          # List files in long format
la          # List all files including hidden
cdl <dir>   # Change directory and list contents
mkcd <dir>  # Create directory and cd into it
```

### 🔧 Shell Management
```bash
# Configuration shortcuts
openzs      # Open .zshrc in editor
sourcezs    # Reload .zshrc configuration
zshconfig   # Edit .zshrc
ohmyzsh     # Edit Oh My Zsh configuration
```

### 🐙 Git Operations
```bash
# Basic Git (enhanced by oh-my-zsh git plugin)
gst         # git status
gco         # git checkout
gcb         # git checkout -b (create new branch)
gp          # git push
gl          # git pull

# Additional shortcuts
git-prompt  # Shows current branch in prompt
```

### 🐍 Python Development
```bash
py          # python
py3         # python3
pip         # pip3

# pyenv commands
pyenv versions          # List installed Python versions
pyenv install 3.11.0    # Install specific Python version
pyenv global 3.11.0     # Set global Python version
pyenv local 3.11.0      # Set local Python version for project
```

### 📦 Node.js Development
```bash
# npm shortcuts
ni          # npm install
ns          # npm start
nr          # npm run
nt          # npm test

# nvm commands (lazy-loaded)
nvm ls      # List installed Node versions
nvm install 18.0.0  # Install Node version
nvm use 18.0.0      # Switch to Node version
```

### ☕ Java Development
```bash
# Maven shortcuts
mvn-clean   # mvn clean compile
mvn-test    # mvn clean test
mvn-package # mvn clean package

# SDKMAN commands
sdk list java           # List available Java versions
sdk install java 21.0.0 # Install Java version
sdk use java 21.0.0     # Switch Java version
```

### 🤖 AI & GitHub Copilot
```bash
ghcp        # gh copilot
ghcs        # gh copilot suggest
ghce        # gh copilot explain

# Example usage
ghcs "create a function to sort an array"
ghce "git reset --hard HEAD~1"
```

### 🌐 Network & System
```bash
port        # List all ports (lsof -i)
ports       # List listening ports
stop <PID>  # Kill process by PID
myip        # Get your public IP address
serve       # Start HTTP server on port 8000
```

## 🚀 Development Workflows

### Starting a New Python Project
```bash
# Create project directory
mkcd my-python-project

# Set Python version for this project
pyenv local 3.11.0

# Create virtual environment
python -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### Starting a New Node.js Project
```bash
# Create project directory
mkcd my-node-project

# Set Node version (if needed)
nvm use 18

# Initialize project
npm init -y

# Install dependencies
ni express

# Start development
nr dev
```

### Working with Git
```bash
# Check status (with branch info in prompt)
gst

# Create and switch to new branch
gcb feature/new-feature

# Add and commit changes
git add .
git commit -m "Add new feature"

# Push to remote
gp
```

## 🔧 Troubleshooting

### ⚠️ Most Common Issue: Agnoster Theme Override

**Problem:** You see `[username@machine ~]$` instead of agnoster's colored arrow segments.

**Root Cause:** The `.zshrc.pre-oh-my-zsh` file contains a custom prompt (PS1) that overrides Oh My Zsh themes.

**Quick Fix:**
```bash
# Check if this is your issue
grep "PS1=" ~/.zshrc.pre-oh-my-zsh

# If you see PS1 being set, edit the file to wrap the prompt section:
# Only set custom prompt when Oh My Zsh is NOT active
if [[ -z "$ZSH_VERSION" || -z "$ZSH" ]]; then
    # Your existing PS1 settings here
fi
```

### Common Issues

#### Agnoster Theme Not Working Properly
This is one of the most common issues with the setup. See the "Theme Not Displaying Correctly" section below for detailed troubleshooting.

#### Plugins Not Working
```bash
# Check if plugins are installed
ls -la ~/.oh-my-zsh/custom/plugins/

# Reinstall missing plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### Theme Not Displaying Correctly

**Issue 1: Font Problems**
```bash
# Install required fonts for special characters
brew install --cask font-fira-code
brew install --cask font-meslo-lg-nerd-font

# Update terminal font settings to use one of these fonts
# Check terminal preferences → Profiles → Text → Font
```

**Issue 2: Prompt Override (Common Issue)**
If agnoster theme shows as a simple prompt like `[username@machine ~]$` instead of colored segments with arrows, your `.zshrc.pre-oh-my-zsh` file might be overriding the prompt.

**Symptoms:**
- Seeing `[aniloi@aniloi-MacBook-Pro ~]$` instead of agnoster's colored segments
- Theme appears to load but doesn't display correctly

**Fix:**
1. Check if your pre-oh-my-zsh file is setting PS1:
   ```bash
   grep -n "PS1\|PROMPT" ~/.zshrc.pre-oh-my-zsh
   ```

2. If found, the prompt-setting section should be wrapped to only apply when Oh My Zsh is not active:
   ```bash
   # Git prompt integration (only if Oh My Zsh is not being used)
   if [[ -z "$ZSH_VERSION" || -z "$ZSH" ]]; then
       if [[ -f "$HOME/.git-prompt.sh" ]]; then
           source "$HOME/.git-prompt.sh"
           setopt PROMPT_SUBST
           PS1='[%n@%m %c$(__git_ps1 " (%s)")]$ '
       else
           # Fallback prompt
           PS1='[%n@%m %c]$ '
       fi
   fi
   ```

3. Reload your configuration:
   ```bash
   source ~/.zshrc
   ```

**Verification:**
After fixing, you should see agnoster's characteristic blue arrow-shaped segment with your username, not the bracketed format.

#### pyenv/nvm Not Working
```bash
# Reinstall pyenv
brew install pyenv

# Reinstall nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Reload shell
source ~/.zshrc
```

#### Java/Maven Issues
```bash
# Check Java installation
java -version

# Check JAVA_HOME
echo $JAVA_HOME

# Reinstall if needed
brew install java maven
```

### Performance Issues

If your shell is starting slowly:
```bash
# Profile shell startup time
time zsh -i -c exit

# Check for problematic plugins
# Temporarily disable plugins in ~/.zshrc and test
```

### Getting Help
```bash
# Check tool versions
python --version
node --version
java -version
mvn --version

# Get help for specific tools
pyenv --help
nvm --help
sdk help
```

## 🎨 Customization

### Adding Your Own Aliases
Create a local configuration file:
```bash
# Create local config file
touch ~/.zshrc.local

# Add your custom aliases
echo 'alias mycommand="echo Hello World"' >> ~/.zshrc.local

# Reload shell
sourcezs
```

### Changing Themes
Edit `~/.zshrc` and change the theme line:
```bash
# Popular alternatives
ZSH_THEME="robbyrussell"  # Simple and fast
ZSH_THEME="powerlevel10k" # Highly customizable
ZSH_THEME="spaceship"     # Modern and informative
```

### Adding More Plugins
Edit the plugins array in `~/.zshrc`:
```bash
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker              # Add Docker support
    kubectl             # Add Kubernetes support
    aws                 # Add AWS CLI support
)
```

### Environment Variables
Add to `~/.zshrc.local`:
```bash
export MY_API_KEY="your-api-key"
export CUSTOM_PATH="/path/to/custom/tools"
export PATH="$CUSTOM_PATH:$PATH"
```

## 📚 Learning Resources

### Zsh & Oh My Zsh
- [Oh My Zsh Documentation](https://github.com/ohmyzsh/ohmyzsh)
- [Zsh Manual](http://zsh.sourceforge.net/Doc/)
- [Awesome Zsh Plugins](https://github.com/unixorn/awesome-zsh-plugins)

### Development Tools
- [pyenv Documentation](https://github.com/pyenv/pyenv)
- [NVM Documentation](https://github.com/nvm-sh/nvm)
- [SDKMAN Documentation](https://sdkman.io/)
- [GitHub Copilot CLI](https://cli.github.com/manual/gh_copilot)

## 🆘 Support

If you encounter issues:

1. **Agnoster theme not working?** - Check the troubleshooting section above for the prompt override fix
2. **Check the error messages** - they often contain helpful information
3. **Reload your configuration**: `source ~/.zshrc`
4. **Check tool installations**: Ensure all required tools are installed
5. **Review PATH**: `echo $PATH` to verify tool locations
6. **Test in a new terminal window** to ensure changes are applied

## 🎉 Next Steps

Now that your terminal is set up:

1. **Explore the aliases** - try different shortcuts
2. **Set up your development projects** using the workflows above
3. **Customize further** based on your specific needs
4. **Learn keyboard shortcuts** for faster navigation
5. **Explore Oh My Zsh plugins** for additional functionality

Happy coding! 🚀

---

*Last updated: November 2025*
*Configuration optimized for macOS with Apple Silicon/Intel compatibility*