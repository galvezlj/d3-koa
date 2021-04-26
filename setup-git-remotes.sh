#!/bin/bash

echo "[Listing Git remote states before execution...]"
git remote -v

echo "[Executing Git remote commands...]"
git remote add github https://github.com/koajs/koa.git
git remote set-url github --push DISABLED
echo "[Completed Git remote commands...]"

echo "[Listing Git remote states after execution...]"
git remote -v