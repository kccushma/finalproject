# KC's Final Project

## Introduction

This is a final project for the [Interacting with Data](https://github.com/Brown-BIOL2430-S04-Fall2015/syllabus) seminar in fall 2015. This project explores how local climate and species' traits influence seasonal wood production of tropical trees. 

To view this project, [click here](https://rawgit.com/kccushma/finalproject/master/KCProject.html).

## The data

This dataset includes measurements of seasonal wood production (diameter change) in about 2,000 trees in the 50-hectare Forest Dynamics Plot on Barro Colorado Island, Panama. Dendrometer bands were installed in 2008 and are measured two times per year, at the beginning and end of the rainy season.

- **Data source.** These are unpublished data collected by the research group of Dr. Helene Muller-Landau at the Smithsonian Tropical Research Institute (STRI). 
- **Data structure.**
	- *Wood production censuses:*  During each census, we measured:
		- diameter increment
		- canopy illumination (1-5, with 1 having  no illumination and 5 having complete illumination)
		- canopy condition (1-4, with 1 having severe crown damage and 4 being fully intact)
		- canopy lianas (0-4, with 0 having no canopy lianas and 4 having lianas throughout the entire canopy)
	- *Local climate:* Local climate data is publicaly available for the entire duration of the study from the [STRI Physical Monitoring Program](http://biogeodb.stri.si.edu/physical_monitoring/research/barrocolorado). Relevant climate variables from the Lutz watershed and meteorological tower are:
		- evapotranspiration
		- solar radiation
		- soil moisture
	- *Plant functional traits:* A local functional trait database exists for over 600 tree species on Barro Colorado Island. Data were provided by Dr. Joe Wright of STRI for:
		- wood density
		- maximum adult height and crown diameter
		- leaf morphology

## Background

Most previous long-term studies of wood production present plot-level growth rates averaged over long periods of time (annual or multi-year periods). For example, [Clark et al. (2013)](http://dx.doi.org/10.1002/jgrg.20067) measured wood production, along with other major carbon pools, for 12 years in a tropical wet forest in La Selva, Costa Rica. This paper maps data using a scatterplot of average wood production versus individual climate metrics that were found most important using simple linear regressions.  Studies such as [Clark and Clark (1994)](http://doi.org/10.2307/2261450) that compare species differences are often limited to a small number of species (here, six) compared to the diversity of lowland tropical forests. In this study, barplots with different patterns are used to show differences in wood production over time for each focal species. Changes in climate over time are also represented by barplots, but no visual representation combines measurements of trees and climate in a single image. 

Some recent studies report wood production over finer temporal scales, such as  [Grogan and Schulze (2012)](http://dx.doi.org/10.1111/j.1744-7429.2011.00825.x). This paper uses thin lines to represent wood production trajectories for individual trees over time, and overlays those data with barplots showing precipitation for the same time period. 

One limitation of previous visualizations is that they use a fixed representation of climate data, averaging climate data over time periods of weeks to years. However, the physiological processes governing wood production , such as photosynthesis and respiration, operate over much smaller temporal scales. Additionally, although there are numerous climatic metrics that are predicted to influence plant physiology, usually only one such metric is chosen for any individual data representation.

Another limitiation of previous research is the representation of different species within a forest. Usually species differences are either ignored or limited to a few species, but species with different functional traits are likely to show different patterns of optimal production. 

## This project

This project builds upon previous work by allowing a more flexible exploration of climate. Wood production data are limited to semiannual measurements, but this visualization will allow the viewer to choose climatic variables and how to average them.

Additionally, this project will allow functional traits to be simultaneously mapped to the visualization to explore how trees with different traits might respond differently to climate variation. 

### Mapping of data to aesthetics

How will aesthetic attributes ( X / Y / color / shape / size /texture / etc ) will be mapped to the data?

### Filtering

Are data filtered? ie in some views are some data not mapped to particular attributes of the image? What is the goal of the filtering?

### Extra ink

Are there aesthetic attributes that are not mapped to the data? If so, what purpose do they serve ( redundancy for robustness / improve visual metaphor / but data in context / beauty / etc )?

Are any data mapped to more than one aesthetic attribute? Why?

### Motion

If motion is used, what purpose does it serve ( metaphor (eg representing motion in real world) / transition continuity between views / etc )

### Perspective

To what extent is perspective (eg mappings) controlled by users vs hard coded in advance? How does this project aid in exploration vs exposition?

## Assessment

Was the new visualization successful at providing insight that was not possible or more difficult with previous approaches?

What are the main limitations of new approach?

What are future directions this could go in?


