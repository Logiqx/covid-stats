# Project Env
. $(dirname $0)/env.sh

# Refresh NHS UEC SitReps
run_py_script nhs_sitreps.py
ERRVAL=$?

# Compress Images
if [[ $ERRVAL == 0 ]]
then
	optipng -o2 docs/uec-sitreps/*png
	ERRVAL=$?
fi
