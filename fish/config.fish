if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    set -gx VISUAL nvim
    set -gx EDITOR nvim
    set -gx TERM alacritty
end
