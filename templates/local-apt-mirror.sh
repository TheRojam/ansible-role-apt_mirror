#!/bin/bash

/usr/bin/apt-mirror > {{ apt_mirror.log_dir }}/$(date '+%Y-%m-%d').log