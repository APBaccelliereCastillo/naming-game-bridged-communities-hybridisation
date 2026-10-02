#!/bin/bash
# Runs the five scenarios headlessly with NetLogo 7.0.4.
# Edit the three paths below. MODEL and OUT must be absolute paths.

NETLOGO_DIR="/Applications/NetLogo 7.0.4"            # NetLogo installation folder
MODEL="/absolute/path/to/hybrid-language.nlogox"     # model with the BehaviorSpace experiments
OUT="/absolute/path/to/results"                      # output folder for the CSV files

set -e
mkdir -p "$OUT"
cd "$NETLOGO_DIR"

for exp in baseline low-gamma high-gamma low-beta lower-beta; do
  ./netlogo-headless.sh --model "$MODEL" --experiment "$exp" --table "$OUT/$exp.csv"
done