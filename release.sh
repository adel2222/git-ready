#!/bin/bash
set -e

if [ ! -f pypirc ] ; then
    echo 'PyPi RC file does not exist, attempting to create one...'
    echo '[pypi]' > ~/.pypirc
    echo "username: ${1}" >> ~/.pypirc
    echo "password: ${2}" >> ~/.pypirc
fi

python setup.py sdist upload
