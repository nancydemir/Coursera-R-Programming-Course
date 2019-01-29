complete <- function(directory,id = 1:332) { 
    
    files_list <- as.character(list.files(directory,full.names=TRUE)) 
         pollutant<-c("sulfate","nitrate")
         nobs<-function(id){         
             for(i in id) {
                 file_id<- read.csv(files_list[i], header=T, sep=",")
                 na_removed<-file_id[!is.na(pollutant)]
                 return(sum(complete.cases(na_removed)))
                 }
         }
         return(data.frame(id=id,nobs=sapply(id,nobs)))
}
