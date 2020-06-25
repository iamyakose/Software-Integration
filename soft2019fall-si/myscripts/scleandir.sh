-- Deletes the dummy folder created by MacOs for each new folder
find . -name '.DS_Store' -type f -delete

-- commit and push the clean folders
git add -A
git commit -m "delete dummy"
git push
