#!/usr/bin/env bash

txt(){
    ${EDITOR} $1
}

v() {
    echo $(which $1)
    echo "----------------------------------------------------"
    echo $($1 --version)
}