#!/usr/bin/env bash

# Update to the latest homebrew version
brew update

# Upgrade any already installed formulae
brew upgrade

# Save Homebrew’s installed location.
# BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed 

# Install a modern version of Bash.
#brew install bash
#brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget` with IRI support.
brew install wget 
# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp

# Other Tools and binaries I commonly install
# Can never be to far from my roots
brew install powershell
brew install discord
# Reproduces windows alt+tab feeling
brew install witch
# Yaml Diff tool
brew install ydiff
# yaml + kubernetes diff tool
brew install dyff
# Yaml formatter and pretty output
brew install yq
# JSON formatter and pretty output
brew install jq
# Encryption of files
brew install sops
# Kubernetes cluster tool
brew install k9s

brew install visual-studio-code
brew install terraform
brew install helm
brew install htop
brew install go
brew install git
brew install git-lfs
brew install gh
brew install tree

# Terminal setup
brew install iterm2
brew install starship

# Remove outdated versions from the cellar.
brew cleanup