##SET ENVIRONMENTAL/DIRECTORY INFORMATION

dataDir<-"/UCI Har Dataset/"
trainDataDir<-"/UCI HAR Dataset/train/"
testDataDir<-"/UCI HAR Dataset/test/"
subfold1 <- dir('UCI HAR Dataset/train')[-1]
subfold2 <- dir('UCI HAR Dataset/test')[-1]

##READ DATA IN
subjectTrain <- read.table(paste0(getwd(), trainDataDir,subfold1[1]))
xTrain <- read.table(paste0(getwd(), trainDataDir,subfold1[2]))
yTrain <- read.table(paste0(getwd(), trainDataDir,subfold1[3]))
subjectTest <- read.table(paste0(getwd(), testDataDir,subfold2[1]))
xTest<-read.table(paste0(getwd(), testDataDir,subfold2[2]))
yTest<-read.table(paste0(getwd(), testDataDir,subfold2[3]))
colHeaders <- read.table(paste0(getwd(),dataDir,"features.txt"))
activityLabels <- read.table(paste0(getwd(),dataDir,"activity_labels.txt"))

##MERGE ALL DATA TOGETHER
##Merge Training data with Subject info for training data
xTrain<-cbind(yTrain, xTrain)
xTrain<-cbind(subjectTrain, xTrain)

##Merge Test data with subject info for test data
xTest<-cbind(yTest, xTest)
xTest<-cbind(subjectTest, xTest)

##Lastly merge the training and test data together
allDat<-rbind(xTrain, xTest)

##CLEAN and RESET COLUMN HEADERS to better describe the observation
colHeaders$V2<-gsub("BodyBody","Body",colHeaders$V2)
colHeaders$V2<-gsub("Body",".body",colHeaders$V2)
colHeaders$V2<-gsub("t.body","time.body",colHeaders$V2)
colHeaders$V2<-gsub("tGravity","time.gravity",colHeaders$V2)
colHeaders$V2<-gsub("f","fft",colHeaders$V2)
colHeaders$V2<-gsub("Acc",".acceleration",colHeaders$V2)
colHeaders$V2<-gsub("Gyro",".gyroscope",colHeaders$V2)
colHeaders$V2<-gsub("Mag",".magnitude",colHeaders$V2)
colHeaders$V2<-gsub("Jerk",".jerksignal",colHeaders$V2)
colHeaders$V2<-gsub("-",".",colHeaders$V2)

newColHeaders<-c("Subject", "Activity", as.character(colHeaders[[2]]))
colnames(allDat)<- newColHeaders

##CLEAN THE DATA
##Remove all observations not related to mean or standard deviation
allDat<-allDat[grep(c("Subject|Activity|mean\\(\\)|std\\(\\)"), names(allDat)) ]
colnames(allDat)<-gsub(pattern="\\(\\)", x=names(allDat), replacement="")

#CLEAN THE ACTIVITY DATA IN THE FILE
##Set all activities to lowercase letters
activityLabels[,2]<-tolower(activityLabels[,2])

##Replace number representation with actual activity description
for (x in 1:nrow(activityLabels)) {
  allDat$Activity<-gsub(activityLabels[x,1], activityLabels[x,2], allDat$Activity)   
}

##CALCULATE AVERAGE/MEAN FOR ALL GROUPINGS (subject+activity)
df_melt <- melt(allDat, id = c("Subject", "Activity"))
allDatAvgs<-dcast(df_melt, Subject + Activity ~ variable, mean)

## WRITE THE TIDY DATA as .txt and .csv fiels in the working directory.
write.table(allDatAvgs,file="tidyData.csv",sep=",",row.names=F)
write.table(allDatAvgs,file="tidyData.txt",sep="\t",row.names=F)
