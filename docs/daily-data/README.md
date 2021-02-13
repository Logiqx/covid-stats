# COVID-19 - Daily Data for England

Author: Michael George

Created: 13 February 2021



## Background

This project contains a standard collection of charts to show the daily trends in England for different age groups.

Daily data from PHE allows cases and deaths to be reported by 5 year age bands. I have combined some of the younger age groups.

Daily data from the NHS (via PHE) has much wider age bands but I am unaware of a daily source with more granularity.



## Latest Charts

### England

- 10-year age bands, linear scale - [Summary](nation/linear-6/england.png), [Cases](nation/linear-6/england_cases.png), [Admissions](nation/linear-6/england_admissions.png), [Deaths](nation/linear-6/england_deaths.png)
- 10-year age bands, log scale - [Summary](nation/log-6/england.png), [Cases](nation/log-6/england_cases.png), [Admissions](nation/log-6/england_admissions.png), [Deaths](nation/log-6/england_deaths.png)
- 5-year age bands, linear scale - [Summary](nation/linear-12/england.png), [Cases](nation/linear-12/england_cases.png), [Admissions](nation/linear-12/england_admissions.png), [Deaths](nation/linear-12/england_deaths.png)
- 5-year age bands, log scale - [Summary](nation/log-12/england.png), [Cases](nation/log-12/england_cases.png), [Admissions](nation/log-12/england_admissions.png), [Deaths](nation/log-12/england_deaths.png)



## Code and Data

All of the project code and associated data is available in a Python project on [GitHub](https://github.com/Logiqx/covid-stats), amongst various other scripts and pieces of ad-hoc analysis relating to COVID-19 data.

These are the most significant Python scripts:

- [phe_download.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_download.ipynb) downloads the latest data (cases, admissions and deaths) from the PHE website using the [API](https://coronavirus.data.gov.uk/details/developers-guide).
- [phe_convert.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_convert.ipynb) converts the downloaded data into regular CSV files, splitting the age demographics into individual fields.
- [phe_charts.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_charts.ipynb) prepares the data and plots the charts.

A number of custom Python modules are also used (e.g. UK demographics) which will become obvious when looking at the main scripts.
