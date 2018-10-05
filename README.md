# git-hooks

https://support.tohero.fr/projects/public/wiki/Git_Hooks

## Install

Run as normal user:
```bash
git clone --depth=1 git@github.com:toHero/git-hooks.git /tmp/tohero-git-hooks >/dev/null 2>&1 && \
/tmp/tohero-git-hooks/scripts/install.sh && \
rm -rf /tmp/tohero-git-hooks
```

## Uninstall

Run as normal user:
```bash
/usr/local/share/tohero/git-hooks/scripts/uninstall.sh
```

## Update

Run as normal user:
```bash
cd /usr/local/share/tohero/git-hooks && \
git pull
```

## Initialise hooks in existing repository

Run as normal user in the reposiroty to initialise:
```bash
/usr/local/share/tohero/git-hooks/scripts/init-repo.sh
```
