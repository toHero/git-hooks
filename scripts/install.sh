#!/bin/bash

source $(dirname $0)/config.sh

sudo mkdir -p ${TOHERO_DIR} && \
sudo chown ${USER}:${USER} ${TOHERO_DIR} && \
git clone ${REPOSITORY} ${TOHERO_HOOKS_DIR} && \
cd ${GIT_HOOKS_TEMPLATE_DIR} && \
sudo ln -s ${TOHERO_HOOKS_DIR}/commit-msg && \
sudo ln -s ${TOHERO_HOOKS_DIR}/pre-commit && \
echo "Installation succeed"