# Return if not linux or MacOS and brew is not installed
if ( [[ "$OSTYPE" != darwin* ]] && [[ "$OSTYPE" != linux* ]] ) && ! (( $+commands[brew] )) ; then
  return 1
fi

#
# Variables
#

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.

${0:h}/setup.zsh
local homebrew_vars_file="${0:h}/autogen--homebrew-vars.zsh"
source $homebrew_vars_file

#
# Aliases
#

# Homebrew
alias brewc='brew cleanup'
alias brewi='brew install'
alias brewL='brew leaves'
alias brewl='brew list'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew upgrade'
alias brewx='brew uninstall'

# Homebrew Cask
alias caski='brew install --cask'
alias caskl='brew list --cask'
alias casko='brew outdated --cask'
alias casks='brew search --cask'
alias casku='brew upgrade --cask'
alias caskx='brew uninstall --cask'
