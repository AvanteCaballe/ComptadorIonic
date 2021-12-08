#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git remote add origin git@github.com:AvanteCaballe/comptador-ionic.git || true

git branch -M main || true

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:AvanteCaballe/comptador-ionic.git main

cd -
