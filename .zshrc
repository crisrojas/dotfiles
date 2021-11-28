# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/crisrojas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#/*
#|--------------------------------------------------------------------------
#| Constants 
#|--------------------------------------------------------------------------
#*/

bearFolder="~/Library/Group\ Containers/9K33E3U3T4.net.shinyfrog.bear/Application\ Data"
notabilityFolder="/Users/crisrojas/Library/Mobile\ Documents/ZP9ZJ4EF3S~com~gingerlabs~Notability/Documents"


#/*
#|--------------------------------------------------------------------------
#| Alises 
#|--------------------------------------------------------------------------
#*/


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias publicar='git add .; git commit -m "publicando"; git push -u origin master'
# alias publicar-crisrojas='cd ~/dev/sites/crisrojashtml/crisrojas; git add .; git commit -m "publicando cambios"; git push -u origin master'


alias src="source ~/.zshrc"
alias edit="vi ~/.zshrc"
alias bearFolder="cd $bearFolder"


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

#export PATH="/usr/local/opt/ruby/bin/ruby"
#export PATH=/usr/local/Cellar/ruby/2.7.1_2/bin:$PATH
#export PATH="/usr/local/cellar/php@7.3.9/bin:$PATH"


#/*
#|--------------------------------------------------------------------------
#| Functions 
#|--------------------------------------------------------------------------
#*/

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
push () { sh ~/dev/.scripts/"$1"-push.sh }
publish () { sh ~/dev/.scripts/"$1"-push.sh }
bear () { sh ~/dev/.scripts/bear-"$1".sh }
notability () { open /Users/crisrojas/Library/Mobile\ Documents/ZP9ZJ4EF3S~com~gingerlabs~Notability/Documents }


#/*
#|--------------------------------------------------------------------------
#| Git functions 
#|--------------------------------------------------------------------------
#*/

status () { git status }
fetch () { git fetch -p }
pull () { git pull $1 }
append () { git add . ; git commit --amend --no-edit }
branch () { git branch }
squash () { git rebase -i HEAD~$1 }
create() { git checkout -b $1 }
checkout() { git checkout $1 }
delete() { git branch -D $1 }

clone () { git clone git@github.com:crisrojas/"$1".git }
