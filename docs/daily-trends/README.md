# COVID-19 - Daily Trends for England

Author: Michael George

Created: 13 February 2021

Updated: Every few days



## Background

This project contains a standard collection of charts to show the daily COVID-19 trends in England for different age groups.

Daily data from PHE allows cases and deaths to be analysed by 5 year age groups. Daily data from the NHS (via PHE) has much wider age groups but I am unaware of a daily source with higher granularity.

I will be downloading the latest data from [coronavirus.data.gov.uk](https://coronavirus.data.gov.uk/) on a daily basis to refresh these charts. The timing might vary slightly and is likely to be somewhere between 6pm and 9pm.



## Latest Charts

All of the reports show when they were last refreshed and the data will be the latest available at that date / time. There are some reporting lags relating to the age demographics for cases, hospitalisations and deaths so most of the metrics are lagging approximately one week behind the report refresh date.

Since all of the charts show a [centred moving average](https://en.wikipedia.org/wiki/Moving_average#Simple_moving_average_(boxcar_filter)) (CMA) you may feel the delay is slightly longer (i.e. 3 days additional lag). The benefit of a CMA is that all of the data remains correctly aligned with the date labels on the x-axis. The use of a CMA doesn't actually introduce any extra lag over a regular MA, only alignment of the data with the x-axis. 

The simplest charts are for the nations of the United Kingdom and regions of England:

- [Nations of the United Kingdom](nations/index.html) - cases, admissions, deaths
- [Regions of England](regions/index.html) - cases, admissions, deaths

Charts showing hospital data for the nations of the United Kingdom and regions of England:

- [Nations of the United Kingdom](nations/nhs.html) - admissions, patients, MV patients
- [Regions of England](regions/nhs.html) - admissions, patients, MV patients

Charts showing several different age groups in England are available:

- [6 age groups](nation/england/index-6.html)
- [9 age groups](nation/england/index-9.html)
- [12 age groups](nation/england/index-12.html)

To monitor daily cases in England there are also charts for all age groups:

- [All age groups](nation/england/index-alt.html)



## Linear vs Log Scales

Charts are available with two different scales for the y-axis:

- Linear scale is good when you just want to see an overview of daily cases, hospital admissions and deaths.
- Logarithmic scale is ideal when you want to compare rates of change and look for possible "vaccine effect".

When two (or more) plots are seen to be rising / falling together (e.g. parallel lines) on charts using a [logarithmic scale](https://en.wikipedia.org/wiki/Logarithmic_scale) for the y-axis (aka "semi-log plot"), it indicates that the underlying rate of growth / decay is equal.

When the "vaccine effect" becomes evident in the data for England we should expect to see the older age groups curve downwards more rapidly than the younger age groups on the log scale plots. When plots for the older ages groups cross the younger age groups and continue to diverge, it may well be a good indicator of the "vaccine effect".

This simple approach to analysis is only possible when using a logarithmic scale. The same approach to analysis cannot be applied to the charts using a linear scale.



## Age Groups

All charts are published using three different sets of age groups:

- 6 age groups are designed to align with NHS age groups and historical ONS age groups (e.g. 65-74, 75-84, 85+).
- 9 age groups include the first 8 vaccination groups plus larger groups for the under 55s and 85+ (e.g. under 45, 45-54 ... 80-84, 85+).
- 12 age groups offer further granularity and provide more groups under the age of 55 (e.g. under 25, 25-44, 45-49, 50-54).

Daily hospital admission data from the NHS has limited age groups; e.g. 18-64, 65-84 and 85+. A monthly publication from the NHS provides more precise age groups but the data that is available daily only has the wider age groups.

All of the charts combine the youngest age groups where it makes the data clearer to analyse or where the numbers are particularly low. The younger age groups have lower rates of hospitalisation and death so they are less relevant to current analysis, other than as a benchmark for the reducing rates amongst the non-vaccinated population.



## Code and Data

All of the project code and associated data is available in a Python project on [GitHub](https://github.com/Logiqx/covid-stats), amongst various other scripts and pieces of ad-hoc analysis relating to COVID-19 data.

These are the most significant Python scripts:

- [phe_download.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_download.ipynb) downloads the latest data (cases, admissions and deaths) from the PHE website using the [API](https://coronavirus.data.gov.uk/details/developers-guide).
- [phe_convert.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_convert.ipynb) converts the downloaded data into regular CSV files, splitting the age demographics into individual fields.
- [phe_charts.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_charts.ipynb) prepares the age band data and plots the charts.
- [phe_charts_regions.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/phe_charts_regions.ipynb) prepares the country / region data and plots the charts.

A number of custom Python modules are also used (e.g. UK demographics) which will become obvious when looking at the main scripts.



<!-- Global site tag (gtag.js) - Google Analytics -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-86348435-4"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag() {dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-86348435-4');</script>
