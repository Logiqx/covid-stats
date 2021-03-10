# Project Env
. $(dirname $0)/env.sh

# Refresh PHE Charts
run_py_script phe_charts.py

# Compress Images
optipng -o2 docs/daily-trends/nation/england/*/*png
