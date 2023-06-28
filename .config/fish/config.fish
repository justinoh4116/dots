if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim

starship init fish | source
alias .. 'cd ..'
abbr -a -- ~ 'cd ~'
alias ll 'exa --long --header --git --icons'
alias lla 'exa --long --header --git --icons -a'
alias yay paru

function fish_greeting
    ~/.local/bin/pfetch
end


