#!/bin/bash
ls -a --format=single-column ~ | grep --colour '^\.' | wc -l
