#!/bin/bash

source $(dirname $0)/config.sh

sudo unlink ${GIT_HOOKS_TEMPLATE_DIR}/commit-msg 2>/dev/null >&2 ; \
sudo unlink ${GIT_HOOKS_TEMPLATE_DIR}/pre-commit 2>/dev/null >&2 ; \
sudo rm -rf ${TOHERO_HOOKS_DIR} 2>/dev/null >&2 ; \
echo "Uninstall succeed"