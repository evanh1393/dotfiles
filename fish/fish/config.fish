if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Edit NixOS configuration
function nixedit
    sudo nvim /etc/nixos/configuration.nix
end

# Rebuild NixOS after editing
function nixrebuild
    sudo nixos-rebuild switch
end

# Edit and rebuild in one command
function nixupdate
    sudo nvim /etc/nixos/configuration.nix
    and sudo nixos-rebuild switch
end

# Quick alias for editing (shorter)
function nix-config
    sudo nvim /etc/nixos/configuration.nix
end

# View current generation
function nixgen
    nixos-rebuild list-generations
end

# Rollback to previous generation
function nixrollback
    sudo nixos-rebuild switch --rollback
end
set -gx TERM xterm-256color
