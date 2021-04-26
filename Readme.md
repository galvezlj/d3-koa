This repository is a forked version of the original Koa:
https://github.com/koajs/koa

Main purpose of this forked Koa version is for GDS developers to apply security patches to vulnerabilities that otherwise would not be addressed by the original Author of Koa.

## First time usage

If you're using this repo for the first time, kindly set up the remotes to this state:

```
github  https://github.com/koajs/koa.git (fetch)
github  DISABLED (push)
origin  ssh://git@bitbucket-ssh.ship.gov.sg:7999/ica/ica-forked-koa.git (fetch)
origin  ssh://git@bitbucket-ssh.ship.gov.sg:7999/ica/ica-forked-koa.git (push)
```

by running the script `setup-git-remotes.sh`

## Workflow

#### Branches
- `patch` - this branch contains all the patches applied by GDS developers.
- `master` - this branch is used to sync changes from original GitHub Koa repo.

All Pull Requests must ONLY go into the `patch` branch.

`patch` branch is rebased from `master` branch whenever there are updates to `master`. This process is done manually for now.

`master` branch is set to track `origin` remote, which is the forked Koa in BitBucket. However, it is also used to pull updates from `github` remote, which is the original Koa repo by running:
```
git pull github master
```

It is up to the team's discretion as to when updates should be pulled from GitHub Koa and rebase to `patch` branch.


