# Path to Oh My Fish install.

set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

export http_proxy=http://127.0.0.1:8889
export https_proxy=https://127.0.0.1:8889
#export all_proxy=socks5://127.0.0.1:1089
alias p="sudo pacman -S"
alias pr="sudo pacman -R"
alias pac="sudo pacman -Ss"

alias t='alacritty &'
alias y="yay -S"
alias yr="yay -R"
alias ys="yay -Ss"
alias dwmc="cd ~/.local/applications/dwm"
alias r=ranger
alias vi=nvim
alias vim=nvim
alias q=exit
set fish_greeting
export VISUAL=nvim;
export EDITOR=nvim;
function mkcd
    mkdir -pv $argv;
    cd $argv;
end
