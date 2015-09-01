#!/usr/bin/env sh

date=`date`

echo "hexo generate"
hexo generate

echo "git push curr dir"
git add * 
git commit -m "$date"
git push -u origin master


echo "cd public, git push public"
cd public

git add * 
git commit -m "$date"
git push -u origin master 

echo "publish succ"
