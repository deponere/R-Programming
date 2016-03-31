#########################
# function corr
# 'directory is a character vector of length 1 indicationg the# location of the CSV files
# 
# 'threshold' is a numeric vector of length 1 indicationg the number of completly observed 
# observations (on all variables) required to compute the correlatiopn between nitrate and 
# sulfate; the default is 0
# 
# Retrun a numeric vector of correlations
## NOTE: Do not round the result !


corr <- function(directory, threshold = 0) {
        AllFiles <- list.files(directory)
        result <- vector(mode="numeric", length=0)
        Index  <- 1
        for (i in AllFiles) {
                if (complete(directory,Index)$nobs > threshold) {
                        #fill result vector with summary of cases which are complete
                        DataStream <-read.csv(paste(directory,"/",i,sep=""))
                        result <- c(result,cor(DataStream$sulfate,DataStream$nitrate,,use="complete.obs"))
                        }
                Index <- Index +1
        }
        return(result)
}
