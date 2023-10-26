#!/bin/bash
npm install --unsafe-perm=true --allow-root
npm install vite --unsafe-perm=true --alow-root
npm run build
rm -rf production_out
mkdir production_out
mv build production_out/build
cp package.json production_out
cp package-lock.json production_out
cd production_out
npm ci --omit-dev

#RUNIT!
chmod +x ../runit.sh
cd ..
daemonize -E BUILD_ID=dontKillMe $(pwd)/runit.sh