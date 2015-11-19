#!/bin/bash
./print-date-temp-pair.sh |sort --field-separator=';' --key=2 | tail -n 1
