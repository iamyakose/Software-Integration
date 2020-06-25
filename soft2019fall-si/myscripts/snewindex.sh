-- delete the old index/history file in this git repo
rm -rf .git

-- recreate the repos from the current content only

git init
git add .

git commit -m "renew commit"

-- push to the github remote repos ensuring you overwrite history
git remote add origin https://github.com/datsoftlyngby/soft2019fall-si.git

-- associate this local branch master with that remote origin master
git push -u --force origin master

