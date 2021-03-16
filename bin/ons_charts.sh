# Project Env
. $(dirname $0)/env.sh

# Refresh ONS Charts
run_py_script ons_charts.py

# Compress Images
optipng -o2 docs/weekly-deaths/*png
