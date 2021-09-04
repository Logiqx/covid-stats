# Project Env
. $(dirname $0)/env.sh

# Download PHE data
run_py_script phe_download.py
ERRVAL=$?

# Convert PHE data
if [[ $ERRVAL == 0 ]]
then
	run_py_script phe_convert.py
	ERRVAL=$?
fi

# Refresh PHE Charts
if [[ $ERRVAL == 0 ]]
then
	run_py_script phe_charts.py
	ERRVAL=$?
fi

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
