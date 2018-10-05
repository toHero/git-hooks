#!/bin/bash

source $(dirname $0)/config.sh

# Remove hooks
for hook in "${HOOKS[@]}"
do
    sudo unlink "${GIT_HOOKS_TEMPLATE_DIR}/${hook}" 2>/dev/null >&2
done

# Remove git hook repository
sudo rm -rf ${TOHERO_HOOKS_DIR} 2>/dev/null >&2

echo "Uninstall succeed"