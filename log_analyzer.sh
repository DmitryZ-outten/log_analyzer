#!/bin/sh

CHECK_LINES=10000
LOG_PATH=""

tail -n ${CHECK_LINES} ${LOG_PATH} | grep -viE -f log_analyzer.patterns | sort >> ./log_analyzer.results
cat ./log_analyzer.results | wc -l
