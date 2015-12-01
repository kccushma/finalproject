## Set working directory
setwd("~/Documents/Brown/InteractingWithData/FinalProject/finalproject")

## Read in data
  # Solar radiation
    SR <- read.csv("~/Documents/Brown/InteractingWithData/RawData/Rad_48m.csv")
  # Relative humidity
    RH <- read.csv("~/Documents/Brown/InteractingWithData/RawData/RH_48m.csv")
  # Air temperature
    AT <- read.csv("~/Documents/Brown/InteractingWithData/RawData/Temp_48m.csv")
  # Precipitation
    PR <- read.csv("~/Documents/Brown/InteractingWithData/RawData/Rain.csv")

## Convert data to Julian date
  # Solar radiation
    SR$Date <- as.character(SR$Date)
    SR$JDate <- as.date(SR$Date, order='mdy')
  # Relative humidity
    RH$Date <- as.character(RH$Date)
    RH$JDate <- as.date(RH$Date, order='mdy')  
  # Air temperature
    AT$Date <- as.character(AT$Date)
    AT$JDate <- as.date(AT$Date, order='mdy')
  # Precipitation
    PR$Date <- as.character(PR$Date)
    PR$JDate <- as.date(PR$Date, order='mdy')

## Subset a few years of data
  # What are the min and max dates of each data type
    # Solar radiation
      min(SR$JDate);max(SR$JDate)
    # Relative humidity
      min(RH$JDate);max(RH$JDate)  
    # Air temperature
      min(AT$JDate);max(AT$JDate)  
    # Precipitation
      min(PR$JDate);max(PR$JDate)
  # Subset to the 9 years between 2006-2014
      MinDate <- "01/01/2006"; MinDate <- as.date(MinDate, order='mdy')
      MaxDate <- "12/31/2014"; MaxDate <- as.date(MaxDate, order='mdy')
      # Solar radiation
        SR <- SR[SR$JDate >= MinDate & SR$JDate <= MaxDate,]
      # Relative humidity
        RH <- RH[RH$JDate >= MinDate & RH$JDate <= MaxDate,]    
      # Air temperature
        AT <- AT[AT$JDate >= MinDate & AT$JDate <= MaxDate,]
          AT[AT$Temp_48m==-999,"Temp_48m"] <- NA
      # Precipitation
        PR <- PR[PR$JDate >= MinDate & PR$JDate <= MaxDate,]

## Aggregate to daily averages
  # Solar radiation
    SRdaily <- aggregate(SR$Rad, by=list(as.numeric(SR$JDate)), FUN="sum", na.rm=T)
      names(SRdaily) <- c("JDate","SR")
  # Relative humidity
    RHdaily <- aggregate.data.frame(RH$RH_48m, by=list(as.numeric(RH$JDate)), FUN="mean", na.rm=T) 
      names(RHdaily) <- c("JDate","RH")
  # Air temperature
    ATdaily <- aggregate.data.frame(AT$Temp_48m, by=list(as.numeric(AT$JDate)), FUN="mean", na.rm=T)
      names(ATdaily) <- c("JDate","AT")
  # Precipitation  
    PRdaily <- aggregate.data.frame(PR$Rain, by=list(as.numeric(PR$JDate)), FUN="sum", na.rm=T)
      names(PRdaily) <- c("JDate","PR")

  # Merge into one file
    MetDaily <- merge(SRdaily,RHdaily,by="JDate",all.x=T,all.y=T)
    MetDaily <- merge(MetDaily,ATdaily,by="JDate",all.x=T,all.y=T)
    MetDaily <- merge(MetDaily,PRdaily,by="JDate",all.x=T,all.y=T)
  # Fill in 0's for NA values for precipitation (when there is no precipitation, the tipping bucket measuring 
  # system does not record data and produces NA instead of 0)
    MetDaily[is.na(MetDaily$PR),'PR'] <- 0


# Write csv
write.csv(MetDaily, file="~/Documents/Brown/InteractingWithData/FinalProject/finalproject/MetDaily.csv",row.names=F)

