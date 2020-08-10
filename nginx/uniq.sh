#!/usr/bin/env bash
cat log/access.log | awk '{print $1}' | uniq >> uniq.dat
