#!/usr/bin/env sh
#
# ALex Huang's personal config file in macOS

YABAI=$HOME/.yabairc
SKHD=$HOME/.skhdrc
YABAI_REPO=$PWD/../dotfiles/yabai/.yabairc
SKHD_REPO=$PWD/../dotfiles/skhd/.skhdrc

configs=($YABAI $SKHD)

#######################################
# Check the config file and soft link
# Globals: 
#   None
# Arguments:
#   Config file name and its Repo directory
#######################################
function check_link() {
    dir="$1"
    repo_dir="$2"

    # check if the soft link exists
    if [[ -L "$dir" ]]; then
        echo "$dir link exists"
        return 0
    fi

    # check if the config file exists
    if [[ -f "$dir" ]]; then
        # backup the original file
        mv $dir $dir.bk
        # soft link
        ln -s "$repo_dir" "$dir"
    fi

}


main() {
    # link yabai
    check_link $YABAI $YABAI_REPO
    # link skhd
    check_link $SKHD $SKHD_REPO
}


main "$@"

