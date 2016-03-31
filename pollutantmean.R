###############
# Assignment 1 - R Programming Language - Week 2
# Generated: 30.3.2016

pollutantmean <- function(directory,pollutant,id = 1:332) {
        # Generate filename - add leading zeros
        allFiles = list.files(directory)
        ReadCSV <- function(index) {
                if (index <10) {
                        FileName <- paste(directory,"/00",i,".csv",sep="")
                }
                else if (index <100) {
                        FileName <- paste(directory,"/0",i,".csv",sep="")
                }
                               else {
                        FileName <- paste(directory,"/",i,".csv",sep="")
                               }
                if (file.exists(FileName)) return(read.csv(FileName))
        }
        DataStream <- NULL
        for (i in id) {
                DataStream <- rbind(DataStream,ReadCSV(i))
        }
        # check on the pollutant
        if (pollutant == "sulfate") {
                return(mean(DataStream$sulfate,na.rm=TRUE))
        } else {
                return(mean(DataStream$nitrate,na.rm=TRUE))
        }               
}
