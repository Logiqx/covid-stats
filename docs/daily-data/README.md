# COVID-19 - Daily Data for England

Author: Michael George

Created: 13 February 2021



## Background

This project contains a standard collection of charts to show the daily trends in England for different age groups.

Daily data from PHE allows cases and deaths to be analysed by 5 year age bands.

Daily data from the NHS (via PHE) has much wider age bands but I am unaware of a daily source with higher granularity.



## Linear vs Logarithmic Scales

All of these charts are published published in two different forms using two different scales:

- Linear scale is good when you just want to see an overview of daily cases, hospital admissions and deaths.
- Logarithmic scale is ideal when you want to compare rates of change and look for possible "vaccine effect".

When two (or more) plots are seen to be rising / falling together on charts using [logarithmic scale]((https://en.wikipedia.org/wiki/Logarithmic_scale)) for the y-axis (aka "semi-log plot") it indicates that the underlying rate of growth / decay is equal.

When the "vaccine effect" becomes evident in England we should expect to see the older age groups curve downwards more rapidly than the younger age groups on the log scale plots. When lines are seen to cross and the plots continue to diverge it may be an indicator of "vaccine effect".

This is simple method of analysis is only possible with a logarithmic scale and is not possible using the charts with a linear scale.



## Age Bands

All charts are published published using two different sets of age bands:

- Charts including 10 year age bands are probably the easiest to view. They contain age groups such as 70-79, 80-89 and 90+.
- Charts including 5 year age bands are the more detailed but harder to view. They contain age groups such as 80-84, 85-89 and 90+.

Daily hospital admission data from the NHS has limited age bands; e.g. 18-64, 65-84 and 85+. A monthly publication from the NHS provides more precise age bands but the data that is available daily only has the wider age bands.

All of the charts will combine the youngest age groups where it makes the data clearer to analyse or where the numbers are particularly low.



## Latest Charts

The latest charts are available on this page:

- [England](nation/england/index.html)

All charts are available with linear + logarithmic scales, 10 year and 5 year age bands.



## Code and Data

All of the project code and associated data is available in a Python project on [GitHub](https://github.com/Logiqx/covid-stats), amongst various other scripts and pieces of ad-hoc analysis relating to COVID-19 data.

These are the most significant Python scripts:

- [phe_download.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_download.ipynb) downloads the latest data (cases, admissions and deaths) from the PHE website using the [API](https://coronavirus.data.gov.uk/details/developers-guide).
- [phe_convert.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_convert.ipynb) converts the downloaded data into regular CSV files, splitting the age demographics into individual fields.
- [phe_charts.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_charts.ipynb) prepares the data and plots the charts.

A number of custom Python modules are also used (e.g. UK demographics) which will become obvious when looking at the main scripts.

