#!/usr/bin/env bash

cd "$(dirname "$(readlink -f "$0")")"

rm -r www
wget -xHkKpP www https://www.christiandailyreporter.com/ || exit 1
git add -A www
git commit -m "fetched at $(date)"
exit 0
