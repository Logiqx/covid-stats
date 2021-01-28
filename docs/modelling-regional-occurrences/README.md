# Weekly Deaths in England and Wales

## Modelling of Regional Deaths by Date of Occurrence

### Introduction

This is a simple algorithm to determine the number of deaths in each region by date of occurrence.

It utilises the model that has been built by the ONS to estimate total death occurrences per week in England + Wales.



### Registration Delays

![Registrations vs Occurrences](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\registrations.png)



![PHE Surveillance](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\phe-surveillance.png)



![COVID-19 Occurrences](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\covid-occurrences.png)





### Data

Provisional weekly deaths is published by the ONS every Tuesday, usually around 0930.

Historical ONS data has also been used from these user data requests:

- [Daily deaths, English regions and Wales, 2015 to 2018 occurrences](https://www.ons.gov.uk/redir/eyJhbGciOiJIUzI1NiJ9.eyJpbmRleCI6MSwicGFnZVNpemUiOjEwLCJ0ZXJtIjoiZGFpbHkiLCJwYWdlIjoxLCJ1cmkiOiIvcGVvcGxlcG9wdWxhdGlvbmFuZGNvbW11bml0eS9iaXJ0aHNkZWF0aHNhbmRtYXJyaWFnZXMvZGVhdGhzL2FkaG9jcy8xMTE4OWRhaWx5ZGVhdGhzZW5nbGlzaHJlZ2lvbnNhbmR3YWxlczIwMTV0bzIwMThvY2N1cnJlbmNlcyIsImxpc3RUeXBlIjoiZGF0YWxpc3QifQ.WuOkTV2mLtBVk33j2Saqpat_nrZdcPBbBVb7Gpr5sNI)
- [Daily death occurrences, England, regions of England and Wales: 1970 to 2014](https://www.ons.gov.uk/redir/eyJhbGciOiJIUzI1NiJ9.eyJpbmRleCI6OSwicGFnZVNpemUiOjEwLCJ0ZXJtIjoiZGFpbHkiLCJwYWdlIjoxLCJ1cmkiOiIvcGVvcGxlcG9wdWxhdGlvbmFuZGNvbW11bml0eS9iaXJ0aHNkZWF0aHNhbmRtYXJyaWFnZXMvZGVhdGhzL2FkaG9jcy8wMDU0NTlkYWlseWRlYXRob2NjdXJyZW5jZXNlbmdsYW5kcmVnaW9uc29mZW5nbGFuZGFuZHdhbGVzMTk3MHRvMjAxNCIsImxpc3RUeXBlIjoiZGF0YWxpc3QifQ.mnWlZXFTzvCGAhOBsIiSTCGM6GReevX6Sz5wVnmafSk)



**Weekly deaths - all causes**

- "Weekly figures 2020" - weekly provisional figures on deaths by date of registration

  - England + Wales
  - Regions
  - Wales

- "Estimated total deaths 2020" - estimated total death occurrences per week based on a statistical model

  - England + Wales - modelled by the ONS and not available for the regions



**Weekly deaths - COVID-19 mentioned on the death certificate**

- "Covid-19 - Weekly registrations"

  - England + Wales
  - Regions
  - Wales

- "Covid-19 - Weekly occurrences"

  - England + Wales
  - Regions
  - Wales

  

### Method

1) Align "Weekly figures 2020" with "Estimated total deaths 2020" for each English region and Wales.

​	i. Remove COVID-19 deaths from "Weekly figures 2020" using "Covid-19 - Weekly registrations".

​	ii. Shift the results (non-COVID weekly registrations) left by 3.5 days. result = (current week + next week) / 2

2) Calculate weekly occurrences for all regions and Wales.

 - Use shifted weekly registrations from step 1 + "Estimated total deaths 2020".
 - Estimate weekly occurrences for each region using the following formula:
   regional occurrences = (shifted region registrations / shifted E+W registrations) * "Estimated total deaths 2020"
 - Round to the nearest whole death.

3) Add the COVID occurrences to the results of step 2 for England + Wales, each region and Wales.

- The actual COVID-19 deaths can be found in "Covid-19 - Weekly occurrences".



Mean absolute error (MAE) is around 2.3% for most regions of England when this approach is tested on 2010-2018.

This is a big improvement on basic registration data that has an MAE of around 5.5% and has large errors around bank holidays.

![Estimates](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\estimates.png)



### Previous Years

This method also works well for for previous years by skipping the steps relating to COVID deaths.

You just need to replace "Estimated total deaths 2020" with actual historical figures.



## Choice of Source

### Weekly Occurrences from ONS Modelling

ONS analysis - [Predicting total weekly death occurrences in England and Wales methodology](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/methodologies/predictingtotalweeklydeathoccurrencesinenglandandwalesmethodology)

My analysis - [Analysis of Excess Deaths](https://logiqx.github.io/ons-stats/data_prep/)



![ONS estimates](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\ons-estimates.png)



### Daily Occurrences from PHE

Comparing the excess winter mortality report from the ONS against the national flu and COVID-19 surveillance reports from PHE.



![Comparison of ONS and PHE](C:\Projects\WCA\covid-stats\docs\modelling-regional-occurrences\daily-comparison.png)

