# Load personal functions
fpath=(~/dotfiles/zsh/functions $fpath)

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/home/evanh/.bun/_bun" ] && source "/home/evanh/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.aws/scripts:$PATH"

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi
