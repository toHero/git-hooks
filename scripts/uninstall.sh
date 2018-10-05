#!/bin/bash

source $(dirname $0)/config.sh

sudo unlink ${GIT_HOOKS_TEMPLATE_DIR}/commit-msg && \
sudo unlink ${GIT_HOOKS_TEMPLATE_DIR}/pre-commit && \
sudo rm -rf ${TOHERO_HOOKS_DIR} && \
echo "Uninstall succeed"