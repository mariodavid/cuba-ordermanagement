#!/usr/bin/env bash

printHeader() {
    local text=$1

    echo ""
    echo ""
    echo "${text}"
    echo "--------------------------------------------------------"
}

printError() {
    local text=$1
    echo "ERROR - ${text}"
    echo "ERROR - see build.log for more details"
}


printInfo() {
    local text=$1
    echo "INFO - ${text}"
}