# Project Env
. $(dirname $0)/env.sh

# Convert Weekly LAHB Deaths Data
run_py_script ons_lahb_deaths.py
ERRVAL=$?

# Convert Weekly Deaths Data
if [[ $ERRVAL == 0 ]]
then
	run_py_script ons_convert.py
	ERRVAL=$?
fi

# Refresh ONS Charts
if [[ $ERRVAL == 0 ]]
then
	run_py_script ons_charts.py
	ERRVAL=$?
fi

# Compress Images
if [[ $ERRVAL == 0 ]]
then
	optipng -o2 docs/weekly-deaths/*png
	ERRVAL=$?
fi
