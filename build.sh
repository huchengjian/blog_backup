#!/usr/bin/env sh
echo "hexo generate"
hexo generate

echo "cd public"
cd public

date=`date`
git add * 
git commit -m "$date"
git push -u origin master 

echo "publish succ"
