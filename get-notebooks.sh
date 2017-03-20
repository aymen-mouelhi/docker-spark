#!/bin/bash
set -e

. /usr/local/bin/start.sh jupyter notebook $*
# Download Git
apt-get update
apt-get -f install
apt-get install -y git-core

# Get Notebooks from github repository
cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
