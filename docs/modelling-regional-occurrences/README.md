# Weekly Deaths in England and Wales

## Modelling of Regional Deaths by Date of Occurrence

### Introduction

The ONS release [provisional figures](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/weeklyprovisionalfiguresondeathsregisteredinenglandandwales) for weekly death registrations, every Tuesday morning at around 9.30am. These figures include deaths that have been registered up until the Friday 11 days prior to the publication.

e.g. The weekly publication on Tue 26th Jan 2021 included deaths registered up to Fri 15th Jan 2021.

Historically these publications have only included weekly registrations but since 2020 they have also included other data such as deaths relating to COVID-19. The additional data is available both daily + weekly and by registration date + occurrence date.



### Registration Delays

There is always a delay between when a death occurs and when it is registered with the General Register Office (GRO). This "registration delay" is typically about 4-5 days on average and slightly less for COVID-19 deaths, which are around 3-4 days.

There is a delay significant effect around the weeks containing bank holidays and this can be seen by analysing historical data. The chart below shows the impact of bank holidays on registrations (see dotted line) when compared to the dates of death (solid line).

This makes interpretation of weekly registration data somewhat tricky; especially around Christmas + New Year, Easter, etc.



![Registrations vs Occurrences](registrations.png)





### Date of Occurrence

Within the weekly deaths report there are a number of additional sheets detailing deaths that are related to COVID-19. The additional data is available both daily + weekly and by registration date + occurrence date.

The date of "occurrence" makes for clearer analysis but it must be understood that the latest week will always be incomplete.

This can be seen by overlaying the COVID-19 deaths from all of the weekly reports by date of occurrence. It can clearly be seen that the first time a week is published it is somewhat incomplete but that by the following week it is pretty much up to date.

The exceptions to this general rule are where there are multiple bank holidays close together; e.g. late Dec 2020 and early Jan 2021.

![COVID-19 Occurrences](covid-occurrences.png)



### Modelling

Since the COVID-19 deaths are available by date of occurrence it would be highly beneficial to show weekly deaths by region for all other causes. The ONS have devised a [methodology](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/methodologies/predictingtotalweeklydeathoccurrencesinenglandandwalesmethodology) to estimate the total number of deaths occurring based on the limited registration data available. I did something [similar](https://logiqx.github.io/ons-stats/data_prep/) (albeit somewhat simpler) back in May 2020, slightly before the ONS published their own methodology.

The ONS now publish weekly estimates for weekly occurrences in England and Wales. Using the ONS data, I have devised a simple method to approximate the regional occurrences and it will be explained in the remainder of this document.



### Validation

Prior to explaining the methodology itself, I will quickly summarise it's effectiveness.

The 3 charts below show 10 years worth of historical data and illustrate how well the methodology can estimate weekly occurrences. It can clearly be seen that the estimates (green line) are highly representative of the actuals (blue line).

The mean absolute error (MAE) of the estimates is close to 2.3% for most regions of England when tested against 2010-2018. This is a big improvement over the weekly registrations which have an MAE of around 5.5% and huge errors around bank holidays (dotted blue line).

![Estimates](estimates.png)



### Data

#### Historical Data

Historical ONS data for daily occurrences in the 9 regions across England and Wales:

- [Daily deaths, English regions and Wales, 2015 to 2018 occurrences](https://www.ons.gov.uk/redir/eyJhbGciOiJIUzI1NiJ9.eyJpbmRleCI6MSwicGFnZVNpemUiOjEwLCJ0ZXJtIjoiZGFpbHkiLCJwYWdlIjoxLCJ1cmkiOiIvcGVvcGxlcG9wdWxhdGlvbmFuZGNvbW11bml0eS9iaXJ0aHNkZWF0aHNhbmRtYXJyaWFnZXMvZGVhdGhzL2FkaG9jcy8xMTE4OWRhaWx5ZGVhdGhzZW5nbGlzaHJlZ2lvbnNhbmR3YWxlczIwMTV0bzIwMThvY2N1cnJlbmNlcyIsImxpc3RUeXBlIjoiZGF0YWxpc3QifQ.WuOkTV2mLtBVk33j2Saqpat_nrZdcPBbBVb7Gpr5sNI)
- [Daily death occurrences, England, regions of England and Wales: 1970 to 2014](https://www.ons.gov.uk/redir/eyJhbGciOiJIUzI1NiJ9.eyJpbmRleCI6OSwicGFnZVNpemUiOjEwLCJ0ZXJtIjoiZGFpbHkiLCJwYWdlIjoxLCJ1cmkiOiIvcGVvcGxlcG9wdWxhdGlvbmFuZGNvbW11bml0eS9iaXJ0aHNkZWF0aHNhbmRtYXJyaWFnZXMvZGVhdGhzL2FkaG9jcy8wMDU0NTlkYWlseWRlYXRob2NjdXJyZW5jZXNlbmdsYW5kcmVnaW9uc29mZW5nbGFuZGFuZHdhbGVzMTk3MHRvMjAxNCIsImxpc3RUeXBlIjoiZGF0YWxpc3QifQ.mnWlZXFTzvCGAhOBsIiSTCGM6GReevX6Sz5wVnmafSk)

Data for Jan 2019 to July 2020 was taken from the [Excess Winter Mortality (EWM)](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/bulletins/excesswintermortalityinenglandandwales/2019to2020provisionaland2018to2019final) bulletin:

- [Daily Deaths](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/bulletins/excesswintermortalityinenglandandwales/2018to2019provisionaland2017to2018final#daily-deaths) for England and Wales 2018/2019
- [Daily Deaths](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/bulletins/excesswintermortalityinenglandandwales/2019to2020provisionaland2018to2019final#daily-deaths) for England and Wales 2019/2020, combined with COVID-19 deaths by date of occurrence

Note: I have submitted a user data request for the daily deaths during 2019 by region.



**Sanity Check**

The provisional data from the EWM [bulletin](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/bulletins/excesswintermortalityinenglandandwales/2019to2020provisionaland2018to2019final#daily-deaths) from the ONS was combined with daily COVID-19 deaths and compared against the [surveillance data](https://www.gov.uk/government/statistics/national-flu-and-covid-19-surveillance-reports) from Public Health England (PHE). This simple comparison shows that the EWM figures for Jan to Jul 2020 are perfectly suitable for this activity.

![Comparison of ONS and PHE](daily-comparison.png)



#### Latest Data

Weekly figures for August 2020 onwards are taken from the weekly [dataset](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/weeklyprovisionalfiguresondeathsregisteredinenglandandwales) from the ONS.

Python scripts have been written to [download](https://github.com/Logiqx/covid-stats/blob/master/python/ons_download.ipynb) the latest data from the ONS website and [convert](https://github.com/Logiqx/covid-stats/blob/master/python/ons_convert.ipynb) it into CSV format.



### Methodology

The process of converting weekly registrations to weekly occurrences is relatively straightforward.

1) Semi-align weekly registrations with weekly occurrences for each region of England and Wales.

​	i. Remove COVID-19 deaths from the weekly registrations, determining non-COVID weekly registrations.

​	ii. Shift the non-COVID weekly registrations left by ~3.5 days, using ```(current week + next week) / 2```.

2) Estimate non-COVID weekly occurrences for each region of England and Wales.

​	```estimated occurrences = (shifted regional registrations / shifted national registrations) * national occurrences```

3) Add the known COVID-19 occurrences to the results of step 2 for each region of England and Wales.

This approach is clearly very simple but it produces pretty decent results as mentioned earlier - MAE of ~2.3%. Whilst it could be refined by considering more complex registration delays and applying knowledge of bank holidays it is more than adequate for simple charts.



### Results

The results of this approach have been used to produce some regional charts. For example:

![](C:\Projects\WCA\covid-stats\docs\weekly-deaths\yorkshire_humber.png)



## Choice of Source

### Weekly Occurrences from ONS Modelling

![ONS estimates](ons-estimates.png)



### Daily Occurrences from PHE

Comparing the excess winter mortality report from the ONS against the national flu and COVID-19 surveillance reports from PHE.



![PHE Surveillance](phe-surveillance.png)




