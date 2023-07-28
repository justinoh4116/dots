if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx GPG_TTY (tty)

set -gx EDITOR nvim

set -gx fzf_fd_opts --no-ignore --hidden --exclude=.git
set -gx fzf_directory_opts --bind "ctrl-o:execute(nvim {} &> /dev/tty)"
set -gx fzf_preview_dir_cmd EXA -1 --color=always
set -gx fzf_preview_file_cmd preview

#starship init fish | source
alias .. 'cd ..'
abbr -a -- ~ 'cd ~'
alias ll 'exa --long --header --git --icons'
alias lla 'exa --long --header --git --icons -a'
alias yay paru

function fish_greeting
    ~/.local/bin/pfetch
end


