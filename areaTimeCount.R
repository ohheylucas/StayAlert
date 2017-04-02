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
  }
  numberCounts[j] = num
  num = 0
}
print(numberCounts)
df <- data.frame(numberCounts)