#/bin/bash

echo "Starting the build script..."

RED_COLOR="\033[31m"
YELLOW_COLOR="\033[33m"
GREEN_COLOR="\033[32m"
RESET_COLOR="\033[0m"

MYDIR=$(cd $(dirname "$BASH_SOURCE[0]") & pwd)
CURDIR=$(pwd)

SRC_DIR=.

die()
{
   echo -e "$RED_COLOR$1$RESET_COLOR"
   exit
}

check_return()
{
    if [ $? -ne 0 ]; then
        die "$1"
    fi
}

for APP in $SRC_DIR/app/*
do
    if [ -d $APP ]; then
        echo "Building $APP"
        cd $APP
        make --silent
        check_return "Error While building $APP"
        cd ../../
    fi
done

echo -e "${GREEN_COLOR}Build executed sucessfully${RESET_COLOR}"
