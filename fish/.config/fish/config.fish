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
