LAPD_Crime_and_Collision_Raw_Data_for_2016 <- read.csv("~/Downloads/LAPD_Crime_and_Collision_Raw_Data_for_2016.csv")
crimes = LAPD_Crime_and_Collision_Raw_Data_for_2016
sexCrime <- crimes[grep("sex", crimes$Crm.Cd.Desc, ignore.case=T),]
table(sexCrime)
#isolate the geolocation from raw data

geoLocationData <- sexCrime$Location.1 #first get the location(geoLocation)
write.csv(geoLocationData, file="test.csv") #write it out as .csv so we can append later
test <- read.csv("~/test.csv") 
test["location"] <- NA  #append location address
test$location <- sexCrime$LOCATION
write.csv(test, file="test.csv")

#test
write.csv(table(table$AREA), file="locationCount.csv")
locationCount["probability"]<-NA
mean(locationCount$Freq)
locationCount$probability <- locationCount$Freq / mean(locationCount$Freq)
write.csv(locationCount, file="locationCount.csv")

#calculate teh count for the occurences in a specific area
numberRow = nrow(areaTime)
numberCounts<-vector()
numberAreas<-vector()
num = 0
for( j in 1:24){
  numberAreas[j] = j
  for (i in 1:numberRow){
    if( ((j-1)*100 <= areaTime$TIME.OCC[i]) &&(  areaTime$TIME.OCC[i]< (j*100) )){
      num = num + 1
    }
  }e
  numberCounts[j] = num
  num = 0
}
print(numberCounts)
df <- data.frame(numberCounts, row.names = NULL, check.rows = FALSE, check.name = TRUE)
write.csv(df, file="areaTimeCount.csv")