#!/bin/bash

TOHERO_DIR=/usr/local/share/tohero

sudo unlink /usr/local/share/tohero/git-hooks/commit-msg && \
sudo unlink /usr/local/share/tohero/git-hooks/pre-commit && \
sudo rm -rf ${TOHERO_DIR}/git-hooks && \
echo "Uninstall succeed"