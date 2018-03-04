touch index.html
rm index.html
wget https://www.christiandailyreporter.com/
git add index.html
git commit -m "fetched at $(date)"
