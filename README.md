# Data sets

## Researching the Opiod Crisis - Accidental Drug Related Deaths in Connecticut from 2012 to 2017

### Keywords
medical, drug usage, opioids

### Summary
The dataset contains information regarding each accidental death associated with drug overdose in 
Connecticut from 2012 to June 2017. The data was derived from an investigation by the Office of the 
Chief Medical Examiner which includes the toxicity report, death certificate, as well as a scene investigation. 
The set includes information such as Date, Sex, Race, Age, Location with the type of drug used either in
single usage or multiple combinations.

### Why pick this topic
The topic may provide important insight as to what drug or what combination of drugs are the leading 
cause of accidental death in connecticut and how age or gender may play in part in the cause of death.
The data set contains over 4000 records, but does not contain any numerical variables apart from age,
which might be a shortcoming in gaining better insight. 


### How do I get it?
The documentation for the dataset is [here](https://catalog.data.gov/dataset/accidental-drug-related-deaths-january-2012-sept-2015)
and the link to the data download is under "Downloads & Resources".



## Crop Yields and Weather - State of NY

### Keywords
Weather, Climate, Crop Yields, Principal Crops

### Summary
This dataset requires the combination of two different data sources. The first set being crop yields
which highlights the annual production of crops dating back to the 1990s. The second data set contains
weather data for each state. But we will mostly be focusing our effort on NY. 

### Why pick this topic
This data will help us understand how weather affects crops and show if there is a declining or increasing
trend on crop production in correlation with the climate change. 

Downloading this data set will be a challenge as there are no visible API for both data sources at the
moment and the data is spread out. Some web scraping might make it easier to obtain data from the second
site, but more likely building the entire data set will require a lot of manual copy and pasting.

### How do I get it?
The documentation for the first dataset is [here](https://usda.mannlib.cornell.edu/MannUsda/viewDocumentInfo.do?documentID=1047)
and the link to the data download is under "Latest Releases:".

The second dataset can be obtained [here](https://www.usclimatedata.com/climate/addison/alabama/united-states/usal0586)




## Flights departing NYC in 2013

### Keywords
airline, travel, delay, time, plane, weather

### Summary
A collection of datasets giving information about all flights departing NYC in 2013,
the airports, airlines, planes, and even the weather. Thus there is information
on what type of plane (and engine) departed what airport at what time and whether it
was on time leaving/arriving, as well as the weather conditions.

### What I love about it
This is a great dataset that's available as an R package. Do not think that such
easy availability makes this a poor choice; it's a great choice that allows you to
get started on your project without getting bogged down by unavailable data. It is a rich
dataset that captures a wide variety of parameters and offers lots of scope for
adding value by joining data from different data frames.

### How do I get it?
The data is available as an R package from 
[CRAN](https://cran.r-project.org/web/packages/nycflights13/index.html).
Now, the tailnumbers of the flights are given, but the information about the planes
seems to be a subset of what is available from the 
[FAA](https://www.faa.gov/licenses_certificates/aircraft_certification/aircraft_registry/releasable_aircraft_download/).
The downloadable FAA data, for example, also includes data about the plane's home 
location, which I don't think is included in the R package data. This second source
of data provides scope for the more adventurous to explore further. Does the
population of plane types that use NYC match the general population in the FAA
database? Is there anything surprising about the registered addresses of the planes
that use NYC? (I don't know...)





## UK Environment Agency Water Quality Archive 

### Keywords
environment, water, quality, EA open datasets

### Summary
Data on water quality measurements around England. Sample points can be coastal, estuarine waters,
rivers, lakes, canals or groundwaters. Data from years 2000 onwards are available. A large number
of water quality parameters are provided along, for example, the sample locations name and
position, and date of course. The purpose of the sample is also given.

### What I love about it
Firstly, the documentation available is excellent. I commend the EA for this. Note that it's
open data, but they do request you acknowledge the source if you use the data (well it would
only be polite). Note also that there's an API *but I recommend you don't use this*. The reason
is that there are CSV files available that are really easy to download and start using and ideal
for a capstone project. You can pick a region and a year, download the file, and you're off. There's
plenty of scope for demonstrating data wrangling because, for example

* different quality parameters are provided for different purposes
* the data format is just begging to be made "wide"

What locations would you select? What patterns can you see over time? Can you infer any relationships
between the various water quality parameters? If you nail this and get bored, can you find any local
historic weather data (e.g. rainfall) to join with it? If you have an environmental interest, this
could be a great selection of data.

One sneaky hint that I use myself is that the download data have location in easting and northing and
this gives you a really easy way to just plot locations as x and y in a scatter plot to essentially
get a geographic plan view! 

### How do I get it?
The download page is [here](http://environment.data.gov.uk/water-quality/view/download#).
It's really easy to navigate to the [Documentation](http://environment.data.gov.uk/water-quality/view/doc/reference).
