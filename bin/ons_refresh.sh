# Project Env
. $(dirname $0)/env.sh

# Download ONS data
run_py_script ons_download.py

# Convert ONS Data
run_py_script ons_lahb_deaths.py

# Convert ONS Data
run_py_script ons_convert.py

# Refresh ONS Charts
run_py_script ons_charts.py

# Compress Images
optipng -o2 docs/weekly-deaths/*png
