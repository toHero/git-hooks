#!/bin/bash

REPOSITORY='git@github.com:toHero/git-hooks.git'
TOHERO_DIR='/usr/local/share/tohero'
TOHERO_HOOKS_DIR="${TOHERO_DIR}/git-hooks"
GIT_HOOKS_TEMPLATE_DIR='/usr/share/git-core/templates/hooks'
HOOKS=('commit-msg' 'pre-commit')