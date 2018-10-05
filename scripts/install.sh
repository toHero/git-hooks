#!/bin/bash

source $(dirname $0)/config.sh

# Create directory if not exist
sudo mkdir -p ${TOHERO_DIR} || exit 1

# Set right owner if not the case
sudo chown ${USER}:${USER} ${TOHERO_DIR} || exit 1

# Clone repository
git clone ${REPOSITORY} ${TOHERO_HOOKS_DIR} || exit 1

# Go inside the git template directory to add links to toHero hooks
cd ${GIT_HOOKS_TEMPLATE_DIR} || exit 1

# Add links
for hook in "${HOOKS[@]}"
do
    sudo ln -s "${TOHERO_HOOKS_DIR}/${hook}" || echo "unable to add '${TOHERO_HOOKS_DIR}/${hook}' hook link in '${GIT_HOOKS_TEMPLATE_DIR}'"
done

echo "Installation succeed"