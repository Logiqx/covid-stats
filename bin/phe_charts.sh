# Project Env
. $(dirname $0)/env.sh

# Refresh PHE Charts
run_py_script phe_charts.py

# Refresh PHE Regional Charts
if [[ $ERRVAL == 0 ]]
then
	run_py_script phe_charts_regions.py
	ERRVAL=$?
fi

# Compress Images
if [[ $ERRVAL == 0 ]]
then
	optipng -o2 docs/daily-trends/nation/england/*/*png docs/daily-trends/nations/*/*png docs/daily-trends/regions/*/*png
	ERRVAL=$?
fi
