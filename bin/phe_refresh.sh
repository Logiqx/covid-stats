# Project Env
. $(dirname $0)/env.sh

# Download PHE data
run_py_script phe_download.py

# Convert PHE data
run_py_script phe_convert.py

# Refresh PHE Charts
run_py_script phe_charts.py

# Compress Images
optipng -o2 docs/daily-trends/nation/england/*/*png
