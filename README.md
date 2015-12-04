# KC's Final Project

## Introduction

This is a final project for the [Interacting with Data](https://github.com/Brown-BIOL2430-S04-Fall2015/syllabus) seminar in fall 2015. This visualization explores time scales and the relationships among climatic variables. 

To view this project, [click here](https://rawgit.com/kccushma/finalproject/master/KCProject.html).

To view a preliminary (and very slow) version that plots an averaged scatterplot, [click here](https://rawgit.com/kccushma/finalproject/master/KCProjectPreview.html).

## The data

This is a visualization of climate data collected on Barro Colorado Island, Panama, for the nine-year period between January 1, 2006 and December 31, 2014. 

- **Data source.** These are publicly available data provided by the Smithsonian Tropical Research Institute Physical Monitoring Program. Data can be downloaded from [this site](http://biogeodb.stri.si.edu/physical_monitoring/research/barrocolorado).

- **Data structure.** Climate variables are:
	 - *Air temperature (C)*. Air temperature was measured at 48 m above the ground. Each daily value is an average of automated measurements taken every 15 minutes. 
 	- *Relative humidity (%)*. Relative humidity was measured at 48 m above the ground. Each daily value is an average of automated measurements taken every 15 minutes. 
 	- *Solar radiation (w/m2)*. Solar radiation was measured at 48 m above the ground. Each daily value is a sum of automated measurements taken every 15 minutes.
 	- *Precipitation (mm)*. Precipitation was measured at ground level in a clearing. Each daily value is a sum of automated measurements from a tipping bucket. 

	
## Background

Most previous long-term studies of wood production present plot-level growth rates averaged over long periods of time (annual or multi-year periods). For example, [Clark et al. (2013)](http://dx.doi.org/10.1002/jgrg.20067) measured wood production, along with other major carbon pools, for 12 years in a tropical wet forest in La Selva, Costa Rica. This paper maps data using a scatterplot of average wood production versus individual climate metrics that were found most important using simple linear regressions.  

Some recent studies report wood production over finer temporal scales, such as  [Grogan and Schulze (2012)](http://dx.doi.org/10.1111/j.1744-7429.2011.00825.x). This paper uses thin lines to represent wood production trajectories for individual trees over time, and overlays those data with barplots showing precipitation for the same time period. 

One limitation of previous visualizations is that they use a fixed representation of climate data, averaging climate data over time periods of weeks to years. However, the physiological processes governing wood production , such as photosynthesis and respiration, operate over much smaller temporal scales. Additionally, although there are numerous climatic metrics that are predicted to influence plant physiology, usually only one such metric is chosen for any individual data representation.


## This project

This project builds upon previous work by allowing a flexible exploration of different climate variables. The user can select different variables to compare, and explore how calculating a running average of variable length influences measures of climate variability and relationships among variables. 

### Mapping of data to aesthetics

Data are mapped to aesthetics in two different plots:

 - Plot 1. The left-hand panel shows how two climate variables change over time. Each variable is represented by a line of a different color. The date (in Julian date) maps to the x-position of the line and the measurement maps to the y-position over time. 
 
 - Plot 2. The right-hand panel shows the relationships among the same two climate variables. The colors of the axes correspond to the colors of the line on the left panel. The measurement of one variable maps to the x-coordinate and the measurement of the second variable maps to the y-coordinate. 

### Filtering

Data are filtered to show two out of four climate variables at any one time. Additionally, data are filtered to calculate a running average of multiple days instad of the daily values (well- this is much better for the time-series than for the scatterplot). 

### Extra ink

Each measurement is mapped in both the left and right panels. This allows the user to simultaneously see the relationships among variables and the time scale of variation. 

### Motion

Motion is used a a transition between views when the window for calculating a running average is changed.


### Perspective

This visualization allows the user some flexibility in exploring time scales and climate variables, but some decisions were hard coded in advance. Specificially:

 -  I selected four climate variables out of many that are available. I could have chosen temperature, solar radiation, and humidity at different heights, or in a different area of the island. I chose these measurements because they are automated (and not missing as much data as manual measurements) and had a long time-series.
 
 - The minimum time scale that can be selected in this visualization is daily. In reality, many of the measurements are avilable on even finer time intervals (such as every 15 minutes).


## Assessment

The new visualization is somewhat successful at providing insight into the how time scale influences relationships among variables. This is especially clear looking at solar radiation versus relative humidity. The relationship is pretty clear but noisy at the daily scale, very clear at the scale of about 80 days, and practically nonexistent at the yearly scale. 

One limitation is that this visualization still only allows the user to explore two variables simultaneously. It would be interesting to expand this into more dimensions, such as to see if the PCA axes change depending on time scale. 

Aditionally, there were a couple things that I didn't quite implement in d3:

 -  Currently, moving the time average slide causes the display to update. I would have liked the display to update when either the climate variable selectors or the time average slide were changed.
 
 - The scatterplot does not update to reflect the running average. I figured out a way to kind of do this, but it's really slow. 


