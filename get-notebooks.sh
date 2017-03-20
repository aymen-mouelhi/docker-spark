#!/bin/bash
# Get Notebooks from github repository
cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
