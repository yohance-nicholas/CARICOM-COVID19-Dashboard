# CARICOM COVID-19 Dashboard
Developed and Maintained by 
**Yohance Nicholas** <br />
Consultant Economist @ [Kairi Consultants Limited](http://www.kairi.com) < br />
[LinkedIn](https://www.linkedin.com/in/yohance-nicholas/) <br />
[GitHub](https://github.com/yohance-nicholas)

Date: May 5th 2020

- [Desktop Version](https://yohance-nicholas.github.io/caricom_covid19_dashboard/3_caricom_covid19_flexdashboard_V3.html)
- [Mobile Version](https://yohance-nicholas.github.io/caricom_covid19_dashboard/3_caricom_covid19_flexdashboard_V4.html)

## Overview

This dashboard was prepared with a view to familiarise myself with the [`flexdashboard`](https://rmarkdown.rstudio.com/flexdashboard/) suite offered by RStudio. Flexdashboard enables users to easily create flexible, attractive, interactive dashboards with R. Authoring and customization of dashboards is done using R Markdown and you can optionally include Shiny components for additional interactivity. Flexdashboards allow users to:

- Use R Markdown to publish a group of related data visualizations as a dashboard.
- Support for a wide variety of components including htmlwidgets; base, lattice, and grid graphics; tabular data; gauges and value boxes; and text annotations.
- Flexible and easy to specify row and column-based layouts. Components are intelligently re-sized to fill the browser and adapted for display on mobile devices.
- Storyboard layouts for presenting sequences of visualizations and related commentary.
- Optionally use Shiny to drive visualizations dynamically.

## Rationale

The Coronavirus disease 2019 (COVID-19) is an infectious disease caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). The disease was first identified in December 2019 in Wuhan, the capital of China's Hubei province, and has since spread globally, resulting in the ongoing 2019–20 coronavirus pandemic. For this coursework project, I have opted to use Leaflet to map the incidence of the Novel Coronavirus among [CARICOM Member States](https://caricom.org/member-states-and-associate-members/). All CARICOM countries are classified as developing countries. They are all relatively small in terms of population and size, and diverse in terms of geography and population, culture and levels of economic and social development.  While the pandemic was slow to reach the CARICOM region, the begining of March saw the onset of the pandemic among CARICOM member states. 

## Data Sources

### Johns Hopkins Coronavirus Resource Centree

With a view to map the spread of the disease thus far, I have elected to use two main data sources. Firstly, to obtain the most current data on the incidence of COVID-19, I have opted to utilise the data colelcted by the [Johns Hopkins Coronavirus Resource Centre](https://coronavirus.jhu.edu/). The [2019 Novel Coronavirus COVID-19 (2019-nCoV) Data Repository by Johns Hopkins CSSE](https://github.com/CSSEGISandData/COVID-19) is compiled from a cross section of sources daily. At the time of the preparation of this project, these included the following: 

* World Health Organization (WHO): https://www.who.int/ 
* DXY.cn. Pneumonia. 2020. http://3g.dxy.cn/newh5/view/pneumonia.  
* BNO News: https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/  
* National Health Commission of the People’s Republic of China (NHC): 
 http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml 
* China CDC (CCDC): http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm 
* Hong Kong Department of Health: https://www.chp.gov.hk/en/features/102465.html 
* Macau Government: https://www.ssm.gov.mo/portal/ 
* Taiwan CDC: https://sites.google.com/cdc.gov.tw/2019ncov/taiwan?authuser=0 
* US CDC: https://www.cdc.gov/coronavirus/2019-ncov/index.html 
* Government of Canada: https://www.canada.ca/en/public-health/services/diseases/coronavirus.html 
* Australia Government Department of Health: https://www.health.gov.au/news/coronavirus-update-at-a-glance 
* European Centre for Disease Prevention and Control (ECDC): https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases 
* Ministry of Health Singapore (MOH): https://www.moh.gov.sg/covid-19
* Italy Ministry of Health: http://www.salute.gov.it/nuovocoronavirus
* 1Point3Arces: https://coronavirus.1point3acres.com/en
* WorldoMeters: https://www.worldometers.info/coronavirus/

### World Bank Development Indicators

To supplement this data with relevant socio-demographic data, I have opted to utilise the [World Development Indicator Database](http://datatopics.worldbank.org/world-development-indicators/) maintained by the World Bank Group. The World Development Indicators is a compilation of relevant, high-quality, and internationally comparable statistics about global development and the fight against poverty. The database contains 1,600 time series indicators for 217 economies and more than 40 country groups, with data for many indicators going back more than 50 years.

### Google COVID-19 Community Mobility Reports
I
Additionally, with a view to explore the impact of restrictions imposed on CARICOM Member States, I've incorporated data from the [Google COVID-19 Community Mobility Reports](https://www.google.com/covid19/mobility/). The dataset allows you to see how your community is moving around differently due to COVID-19. As global communities respond to COVID-19, we've heard from public health officials that the same type of aggregated, anonymized insights we use in products such as Google Maps could be helpful as they make critical decisions to combat COVID-19.

These Community Mobility Reports aim to provide insights into what has changed in response to policies aimed at combating COVID-19. The reports chart movement trends over time by geography, across different categories of places such as retail and recreation, groceries and pharmacies, parks, transit stations, workplaces, and residential. As of April 17, Google provides a nice and clean CSV file containing country-day and region-day data. This data is available at the country, regional and U.S. county level.

- `gcmr_retail_recreation`	Google Community Mobility Reports data for the frequency that people visit retail and recreation places expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020
- `gcmr_grocery_pharmacy`	Google Community Mobility Reports data for the frequency that people visit grocery stores and pharmacies expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020
- `gcmr_parks	Google` Community Mobility Reports data for the frequency that people visit parks expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020
- `gcmr_transit_stations`	Google Community Mobility Reports data for the frequency that people visit transit stations expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020
- `gcmr_workplaces`	Google Community Mobility Reports data for the frequency that people visit workplaces expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020
- `gcmr_residential`	Google Community Mobility Reports data for the frequency that people visit residential places expressed as a percentage*100 change relative to the baseline period Jan 3 - Feb 6, 2020

# Files in the Repository

In addition to this readme file, the repository contains the R Markdown files for my first attempts at using the flexdashboard platform. Two versions of the implementation are currently under development:

1.[Desktop Version](https://yohance-nicholas.github.io/caricom_covid19_dashboard/3_caricom_covid19_flexdashboard_V3.html)
2. [Mobile Version](https://yohance-nicholas.github.io/caricom_covid19_dashboard/3_caricom_covid19_flexdashboard_V4.html)
