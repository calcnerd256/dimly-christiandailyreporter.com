rm -r www
wget -xHkKpP www https://www.christiandailyreporter.com/
git add www
git commit -m "fetched at $(date)"
