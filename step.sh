#!/usr/bin/env bash

cd "$(dirname "$(readlink -f "$0")")"

USER_AGENT="a wget spider which is part of project dimly and can be found at https://github.com/calcnerd256/dimly-christiandailyreporter.com"
WWW_DIR="www"

rm -r "$WWW_DIR"
wget -xHkKpP "$WWW_DIR" -U "$USER_AGENT" https://www.christiandailyreporter.com/ || exit 1
git add -A "$WWW_DIR"
git commit -m "fetched at $(date)" && git push github master
exit 0
