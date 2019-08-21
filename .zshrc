# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
ZSH_THEME_RANDOM_CANDIDATES=(
 "ys"                                                                                                                    
 "xxf"                                                                                                                   
 "agnosterzak"                                                                                                           
 "bullet-train"                                                                                                          
 "nodeys" 
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  urltools
  jovial
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  php
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker-compose
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
fpath=(~/.zsh.d/ $fpath)
export JAVA_HOME=/usr/local/java/jre1.8.0_191 
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH

export GOROOT=/usr/local/go/
export GOBIN=${GOROOT}/bin
export GOPATH=/usr/local/gopath/
export PATH=${GOROOT}/bin:$PATH 

export FLUTTER_HOME=/usr/local/flutter
export PATH=${FLUTTER_HOME}/bin:$PATH 

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export proxy_host=127.0.0.1
export proxy_port=9119
export switch_proxy=0
export cdc_in=0

function pp(){
    if [ $switch_proxy = 0 ]; then
        export http_proxy="$proxy_host:$proxy_port"
        export https_proxy="$proxy_host:$proxy_port"                                                                                     
        export ftp_proxy="$proxy_host:$proxy_port"
        switch_proxy=1
        echo -e "梯子模式"
    else
        unset http_proxy
        unset https_proxy
        unset ftp_proxy
        switch_proxy=0
        echo -e "和谐模式"
    fi
}

# function cdc(){
#     if [ $cdc_in = 0 ]; then
#         export proxy_host=127.0.0.1
#         export proxy_port=12639
#         cdc_in=1
#         echo -e "进入CDC"
#         pp
#         pp
#     else
#         export proxy_host=127.0.0.1
#         export proxy_port=8118
#         cdc_in=0
#         echo -e "离开CDC"
#         pp
#         pp
#     fi
# }

export no_proxy="*.oa.com,localhost,*.ma.com,*.test.com"

alias cdblog="cd /work/www/blog_yiranzai_cn"
alias cdwork="cd /work/www/"
alias cdd="cd /work/docker/dnamp/"
alias gpo="git push origin"


alias sw="sudo -u www"

setopt no_nomatch
export PATH="/usr/local/opt/qt/bin:$PATH"

pp

alias transtoen='trans -l zh -t en '
alias transtocn='trans -l zh -t zh '
alias trans='trans -l zh '
