# Envoy command completion

# Functions
_envoy_get_command_list () {
    php envoy.phar \
    	| sed "1,/Available commands/d" \
    	| awk '/^  [a-z]+/ { print $1 }'
}

_envoy () {
	if [ -f envoy.phar ]; then
        compadd `_envoy_get_command_list`
    fi
}

# Completion setup
compdef _envoy php envoy.phar
compdef _envoy envoy

# Alias
alias envoy='php envoy.phar'

# install envoy in the current directory
alias get_envoy='curl -O https://raw.github.com/laravel/envoy/master/envoy.phar'

