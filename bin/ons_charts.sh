# Project Env
. $(dirname $0)/env.sh

# Refresh ONS Charts
run_py_script ons_charts.py
ERRVAL=$?

# Compress Images
if [[ $ERRVAL == 0 ]]
then
	optipng -o2 docs/weekly-deaths/*png
	ERRVAL=$?
fi
