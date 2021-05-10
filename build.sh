#!/bin/sh

set -e

src()
{

}

cleanall()
{
    echo "clean up all"
}

update()
{
    echo "Update"
}

usage()
{
    echo "Usage: build cmd ..."
    echo "       build -h"
    exit 1
}

all()
{
    echo "Run all tasks"

    update
}


while [ $# -gt 0 ]; do
    case "$1" in 
        all)    all;;
        clean)  allclean;;

        src)    src;;

        update) update;;
        *)      usage;;
    esac
    shift
done
