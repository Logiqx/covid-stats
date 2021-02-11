# Urgent and Emergency Care Daily Situation Reports

Author: Michael George

Created: 21 January 2021

Updated: 11 February 2021



## Background

Here is a copy / paste from my original Twitter [thread](https://twitter.com/Mike_aka_Logiqx/status/1352352382466854916?s=20) on 21 Jan 2021:

- These have been created from the latest "Urgent and Emergency Care Daily Situation Reports" from the NHS. I've extracted the data relating to adult critical care beds and plotted it by NHS region, comparing to 2016-2021. London has twice the usual number of winter CC patients!
- The South East and East of England are seeing similarly exceptional winters in critical care. This isn't the "same as every other winter" and usual bed occupancy. The NHS have created vast numbers of extra critical care beds to cope with the increase in patients with COVID-19.
- The Midlands and South West are also seeing the number of patients in critical care rising. Note that previous winters see a relatively consistent number of patients during the winter but in Dec/Jan of 2020/21 the number of patients in critical care has been rising unrelentingly.
- The challenges during Nov 2020 can be seen in the charts for the NW+NE. Since late Dec 2020 the number of patients in critical care can also be seen to be rising in a manner which is far from normal. They are also seeing an unusually high number of CC patients due to COVID-19.



## Code and Data

All of the project code and associated data is available in a Python project on [GitHub](https://github.com/Logiqx/covid-stats), amongst various other scripts and pieces of ad-hoc analysis relating to COVID-19 data.

These are the most significant Python scripts:

- [nhs_download.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/nhs_download.ipynb) checks the NHS England website for new weekly data and downloads the Excel spreadsheets.
- [nhs_sitreps.ipynb](https://github.com/Logiqx/covid-stats/blob/master/python/nhs_sitreps.ipynb) parses the Excel spreadsheets and produces the charts.

A number of custom Python modules are also used which will become obvious when looking at the main scripts.



## Latest Charts

There are 2 different charts for each NHS region and they are stored within a single image for the NHS region.

The charts for each NHS region can be viewed from this page by clicking on the following links.

- Nations

  - [England](england.png)

- NHS Regions
  - [London](london.png)
  - [South East](south_east.png)
  - [East of England](east_england.png)
  - [Midlands](midlands.png)
  - [North West](north_west.png)
  - [North East and Yorkshire](north_east_yorkshire.png)
  - [South West](south_west.png)
