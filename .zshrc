# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/crisrojas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#/*
#|--------------------------------------------------------------------------
#| Constants 
#|--------------------------------------------------------------------------
#*/

bearFolder="~/Library/Group\ Containers/9K33E3U3T4.net.shinyfrog.bear/Application\ Data"
notabilityFolder="~/Library/Mobile\ Documents/ZP9ZJ4EF3S~com~gingerlabs~Notability/Documents"


#/*
#|--------------------------------------------------------------------------
#| Alises 
#|--------------------------------------------------------------------------
#*/

# For a full list of active aliases, run `alias`.
alias src="source ~/.zshrc"
alias edit="vi ~/.zshrc"
alias bearFolder="cd $bearFolder"
timestamp=$(date +%Y-%m-%d_%H:%M:%S)
# timestamp=`date "+%Y%m%d-%H%M%S"`

#/*
#|--------------------------------------------------------------------------
#| Paths 
#|--------------------------------------------------------------------------
#*/


export PATH="/Users/crisrojas/go/bin:$PATH"
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
export PATH=$PATH:~/.composer/vendor/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
export PATH=/usr/local/bin:$PATH


#/*
#|--------------------------------------------------------------------------
#| Functions 
#|--------------------------------------------------------------------------
#*/

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
bear () { sh ~/dotfiles/.scripts/bear-"$1".sh }
notability () { open /Users/crisrojas/Library/Mobile\ Documents/ZP9ZJ4EF3S~com~gingerlabs~Notability/Documents }

source ~/dotfiles/modules/git.sh