# Fish does not read ~/.profile or ~/.bashrc, so PATH/env setup has to live here.
# Keep this outside any interactive guard: login and non-interactive fish need it too.
fish_add_path --global --prepend --path $HOME/.local/bin $HOME/bin
/home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
set fish_greeting # Sets MOTD to nothing (disables greeting)

# Aliases and prompt (starship lives in the Homebrew bin dir added above).
source $HOME/.config/fish/aliases
starship init fish | source
