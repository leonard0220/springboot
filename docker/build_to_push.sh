(cd ../ ; ./clean.sh)
(cd ../ ; ./build.sh)
./docker-build.sh
./docker-up.sh
#./docker-down.sh
./docker-push.sh
