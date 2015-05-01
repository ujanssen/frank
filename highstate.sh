#!/bin/bash
sudo salt-call --local --file-root=$(pwd)/states --pillar-root=$(pwd)/pillars state.highstate

