#!/bin/bash
LOGFILE="/tmp/runit_logs_$(date +%Y.%m.%d-%H.%M.%S.log)"
echo "PUBLIC_GIT_COMMIT=\"$GIT_COMMIT\"" > .env
echo "Using logfile $LOGFILE after fork"
echo "Run NPM install"
npm install --unsafe-perm=true --allow-root
echo "Run NPM update"
npm update
echo "Run NPM install vite"
npm install vite --unsafe-perm=true --alow-root
echo "Building production release with NPM"
NO_COLOR=true npm run build
echo "Starting packaging"
rm -rf production_out
mkdir production_out
mv build production_out/build
cp package.json production_out
cp package-lock.json production_out
echo "Packaging done"
cd production_out

echo "Install Non-Developer dependencies in node environment via NPM"
npm ci --omit-dev

echo "FORKING! No more output will be given. This Jenkins compile will complete."
echo "The child will run as an independant process logging to $LOGFILE"
chmod +x ../runit.sh
cd ..
export BUILD_ID=dontKillMe 
$(pwd)/runit.sh > $LOGFILE 2>&1 & 