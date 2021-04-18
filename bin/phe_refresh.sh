# Project Env
. $(dirname $0)/env.sh

# Download PHE data
run_py_script phe_download.py

# Convert PHE data
run_py_script phe_convert.py

# Refresh PHE Charts
run_py_script phe_charts.py

# Refresh PHE Regional Charts
run_py_script phe_charts_regions.py

# Compress Images
optipng -o2 docs/daily-trends/nation/england/*/*png 
optipng -o2 docs/daily-trends/nations/*/*png 
optipng -o2 docs/daily-trends/regions/*/*png 
