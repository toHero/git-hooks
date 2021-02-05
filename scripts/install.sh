#!/bin/bash

_confirm() {
    echo -n $1 " ? [y/n]"
    old_stty_cfg=$(stty -g)
    stty raw -echo
    answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
    stty $old_stty_cfg
    echo
    if echo "$answer" | grep -iq "^y" ;then
        ${@:2} && return 0
    fi
    return 1
}

# Set right owner if not the case
sudo chown "${USER}:${USER}" "${TOHERO_DIR}" || exit 1

# Clone repository
git clone "${REPOSITORY}" "${TOHERO_HOOKS_DIR}" || exit 1

# Installing missing python package on Ubuntu 20.04
if ! command -v python &> /dev/null
then
    _confirm "Python is missing and it is required to run some git hooks features. Do you wish to install it now" sudo apt install python -y
    exit
fi

# Go inside the git template directory to add links to toHero hooks
cd "${GIT_HOOKS_TEMPLATE_DIR}" || exit 1

# Add links
for hook in "${HOOKS[@]}"
do
    sudo ln -s "${TOHERO_HOOKS_DIR}/${hook}" || echo "unable to add '${TOHERO_HOOKS_DIR}/${hook}' hook link in '${GIT_HOOKS_TEMPLATE_DIR}'"
done

echo "Installation of toHero hooks succeed"
