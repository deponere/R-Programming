###############
# Assignment 1 - R Programming Language - Week 2
# Generated: 30.3.2016

complete <- function(directory,id = 1:332) {
        AllFiles <- list.files(directory)
      #  Generate result vector
        j <- rep(0,length(id))
        index = 1
        for (i in id) {
                #fill result vector with summary of cases which are complete
                j[index] <- sum(complete.cases(read.csv(paste(directory,"/",AllFiles[i],sep=""))))
                index <- index+1
        }
        #return data_frame to have the result correctly displayed
        return(data.frame(id = id,nobs = j))
}
