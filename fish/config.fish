# Set defaults
set -Ux EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Edit NixOS configuration (always nvim)
function nixedit
    set config "/etc/nixos/configuration.nix"
    if test (count $argv) -gt 0
        set config $argv[1]
    end
    sudo nvim $config
end

# Rebuild and switch to the new configuration
function nixrebuild
    echo "🔧 Rebuilding NixOS..."
    sudo nixos-rebuild switch --flake /etc/nixos
end

# Rebuild without switching (for testing build only)
function nixbuild
    echo "🔨 Building NixOS..."
    sudo nixos-rebuild build --flake /etc/nixos
end

# Update flake inputs, then rebuild
function nixupdate
    echo "⬆️ Updating flake inputs..."
    sudo nix flake update /etc/nixos
    nixrebuild
end

if set -q SSH_TTY
  set -x TERM xterm-256color
end
