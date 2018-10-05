#!/bin/bash

source $(dirname $0)/config.sh

# Get git root folder (if none error occur)
LOCAL_REPO=`git rev-parse --show-toplevel` || exit 1

# Check missing hooks and add them
for hook in "${HOOKS[@]}"
do
    if [ ! -f "${LOCAL_REPO}/.git/hooks/${hook}" ]; then
        cd "${LOCAL_REPO}/.git/hooks" && \
        ln -s "${TOHERO_HOOKS_DIR}/${hook}" || echo "unable to add '${TOHERO_HOOKS_DIR}/${hook}' hook link in '${LOCAL_REPO}/.git/hooks'"
    else
        echo "There is already a hook named ${hook} (${LOCAL_REPO}/.git/hooks/${hook})"
    fi
done

echo "Init toHero hooks in the repository done"