#turn the results predicted by Azure into a matrix for database access
Experiment.created.on.4_1_2017...506153734175476c4f62416c57734963.faa6ba63383c4086ba587abf26b85814.v1.default.1643...Results.dataset <- read.csv("~/Downloads/Experiment created on 4_1_2017 - 506153734175476c4f62416c57734963.faa6ba63383c4086ba587abf26b85814.v1-default-1643 - Results dataset.csv", sep="")
results <- Experiment.created.on.4_1_2017...506153734175476c4f62416c57734963.faa6ba63383c4086ba587abf26b85814.v1.default.1643...Results.dataset
#turn data into a matrix form
df2 <- as.data.frame(t(matrix(results[,1],nrow = 24)))
#output the data
write.csv(df2, file="resultsAreabyTime.csv")