#!/bin/bash

TOHERO_DIR=/usr/local/share/tohero

sudo mkdir -p ${TOHERO_DIR} && \
sudo chown ${USER}:${USER} ${TOHERO_DIR} && \
git clone git@github.com:toHero/git-hooks.git ${TOHERO_DIR}/git-hooks && \
cd /usr/share/git-core/templates/hooks && \
sudo ln -s /usr/local/share/tohero/git-hooks/commit-msg && \
sudo ln -s /usr/local/share/tohero/git-hooks/pre-commit && \
echo "Installation succeed"