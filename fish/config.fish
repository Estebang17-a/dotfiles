if status is-login
    set -gx PATH /Users/w/.pyenv/shims $PATH
    set -gx PATH /usr/local/bin $PATH
    set -gx PATH $HOME/.cargo/bin $PATH
    set -gx PATH /usr/local/opt/postgresql@16/bin $PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"
    pyenv init --path | source
    source "$HOME/.cargo/env.fish"
end
if status is-interactive
    pyenv init - | source
end

alias python=python3

# nvm
set -gx NVM_DIR (brew --prefix nvm)

# Functions
function exp
    ssh gordon-pub -t '~/run_exposure_logs.sh'
end

function gcp --argument-names message
    if test -z "$message"
        echo "Enter commit message:"
        read message
        if test -z "$message"
            echo "Error: No commit message provided"
            return 1
        end
    end
    git add -A
    git commit -m "$message"
    git push
end

function gupm
    git upmast
    git merge master
end

# direnv
direnv hook fish | source
zoxide init fish | source
ulimit -n 4096

# Created by `pipx` on 2025-05-23 08:05:37
set PATH $PATH /Users/esteban/.local/bin
source "$HOME/.cargo/env.fish"

alias dev='cd ~/Desktop/caesari2 && nvim'

