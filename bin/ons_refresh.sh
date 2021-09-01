# Project Env
. $(dirname $0)/env.sh

# Convert Weekly LAHB Deaths Data
run_py_script ons_lahb_deaths.py

# Convert Weekly Deaths Data
run_py_script ons_convert.py

# Refresh ONS Charts
run_py_script ons_charts.py

# Compress Images
optipng -o2 docs/weekly-deaths/*png
