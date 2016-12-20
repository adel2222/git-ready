#!/bin/bash
set -e

apt-get update
apt-get install git python-pip -y
pip install -e .
git clone --depth=1 https://github.com/openstack/nova.git
cd nova

# Test with no branch specified.
git ready

# Test with a particular branch specified.
git ready master
