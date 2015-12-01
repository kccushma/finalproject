# Set working directory
setwd("~/Documents/Brown/InteractingWithData/FinalProject/finalproject")

# Load dendrometer data
load("~/Documents/STRI/Dendrometer/Analysis/BCI June 2015/Growth_Nov17.RData")
  # Combine list into a single data frame
  DendroGrowth <- dendro.growth[[1]]
  for(i in 2:length(dendro.growth)){
    DendroGrowth <- rbind(DendroGrowth,dendro.growth[[i]])
  }

# Calculate growth
DendroGrowth$BAinc <- (DendroGrowth$dbh2-DendroGrowth$dbh1)
DendroGrowth$Dateinc <- (DendroGrowth$date2-DendroGrowth$date1)
DendroGrowth$Growth <- DendroGrowth$BAinc/DendroGrowth$Dateinc

# Remove first installation interval
DendroGrowth <- DendroGrowth[DendroGrowth$census1 %in% 2:15,]

# State whether each measurement spans the dry or wet season
DendroGrowth$Season <- NA
DendroGrowth[DendroGrowth$census1 %in% seq(2,14,2),'Season'] <- 'Dry'
DendroGrowth[DendroGrowth$census1 %in% seq(3,13,2),'Season'] <- 'Wet'

# Remove NA values to make file smaller, and filter some extreme values
DendroGrowth <- DendroGrowth[!is.na(DendroGrowth$Growth),]
DendroGrowth <- DendroGrowth[DendroGrowth$Growth > -0.5 & DendroGrowth$Growth < 0.5,]

write.csv(DendroGrowth,file="FullDendroGrowth.csv",
          col.names=T, row.names=F)