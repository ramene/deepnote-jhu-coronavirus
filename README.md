### Welcome to the Infectious Disease Data Project

```sh
.
├── code
│   └── cdcfluview.R
├── covid19-JHU.ipynb
├── covidtracking.ipynb
├── data
│   ├── processed
│   │   └── covid-19-JHU
│   │       └── covid19-JHU.csv
│   └── raw
│       ├── archived_data
│       │   ├── README.md
│       │   ├── archived_daily_case_updates
│       │   └── archived_time_series
│       ├── cdcfluview
│       │   ├── age_groups.csv
│       │   ├── hospitalizations_all
│       │   ├── ili_national.csv
│       │   ├── mortality.csv
│       │   ├── who_nrevss_national_clinical_labs.csv
│       │   ├── who_nrevss_national_prior_to_2015_16.csv
│       │   └── who_nrevss_national_public_health_labs.csv
│       ├── covid19-JHU
│       │   ├── csse_covid_19_data
│       │   └── who_covid_19_situation_reports
│       ├── covidtracking
│       │   ├── states_historical.csv
│       │   └── us_historical.csv
│       ├── italy
│       │   ├── italy-flu-deaths.png
│       │   └── italy_flu_baseline.csv
│       └── population
│           └── populations.csv
└── viz_n_data_exploration.ipynb
```

### Data Descriptions:
* [2019 Novel Coronavirus Data Repository by Johns Hopkins CSSE](https://github.com/CSSEGISandData/COVID-19) - Confirmed cases and deaths by country. Updated daily.
* [Population data](https://www.worldometers.info/world-population/population-by-country/) - Manually created csv file. Static.
* [CDC Flu View](https://cran.r-project.org/web/packages/cdcfluview/index.html) - Downloads of the most popular CDC data sources via the R package, cdcfluview. Updated daily.
* [Italy Flu Baseline](https://www.sciencedirect.com/science/article/pii/S1201971219303285#tbl0015) - Very rough estimates of Itallian flu deaths over a four year period based on academic research models. Only max and min values for each flu season are estimated.
* [The COVID Tracking Project](https://covidtracking.com/) - Data we all wish we had, but is too hard to find on our own. This group has made it a priority to track it down and consolidate it into one place. Hospitalizations, # in ICU, # on ventilators, # tests, and test results can be found in these data sets.
