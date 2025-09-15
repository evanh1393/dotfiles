if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nixedit
    sudo nvim /etc/nixos/configuration.nix
end

# Initialize Starship prompt
if command -v starship >/dev/null
    starship init fish | source
end

function workon
    if test (count $argv) -eq 0
        echo "Usage: workon <env_name>"
        return 1
    end

    set venv_path "$argv[1]/bin/activate.fish"

    if test -f $venv_path
        source $venv_path
        echo "Activated virtual environment: $argv[1]"
    else
        echo "No virtual environment found at $argv[1]"
    end
end

# Zoxide initialization
if type -q zoxide
    zoxide init fish | source
end

# My Aliases
function llc
    ll | bat -l conf -p
end
