# Project Env
. $(dirname $0)/env.sh

# Refresh NHS UEC SitReps
run_py_script nhs_sitreps.py

# Compress Images
optipng -o2 docs/uec-sitreps/*png
