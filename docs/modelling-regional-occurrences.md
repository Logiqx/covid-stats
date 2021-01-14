# Weekly Deaths in England and Wales

## Modelling of Regional Deaths by Date of Occurrence

### Introduction

This is a simple algorithm to determine the number of deaths in each region by date of occurrence.

It utilises the model that has been built by the ONS to estimate total death occurrences per week in England + Wales.



### Data

Data from the ONS provisional weekly deaths, published every Tuesday.



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



### Previous Years

This method also works well for for previous years by skipping the steps relating to COVID deaths.

You just need to replace "Estimated total deaths 2020" with actual historical figures.

