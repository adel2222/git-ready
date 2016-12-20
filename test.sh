#!/bin/bash
set -e

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

# Testing dependencies.
apt-get update
apt-get install git python-pip -y

pip install -e $SCRIPTPATH
git clone --depth=1 https://github.com/openstack/nova.git
cd nova

# Test with no branch specified.
git ready

# Test with a particular branch specified.
git ready master
