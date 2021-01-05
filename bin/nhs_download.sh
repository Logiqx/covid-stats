# Project Env
. $(dirname $0)/env.sh

# Download NHS data
run_py_script nhs_download.py
