source("complete.R")

corr <- function(directory,threshold=0) { 
   id=c(1:322)
   
    get_more<-function(fname){
        files_list <- as.character(list.files(directory,full.names=TRUE)) 
        #for(i in id) {
           # data <- complete(directory, i)
             data<- read.csv(files_list[i], header=T, sep=",")
             nobs<-sum(complete.cases(data))
             if (nobs > threshold) {
                 return(cor(data$nitrate,data$sulfate))
             }  
        #}
    }
    # sapply - When you want to apply a function to each element of 
    # a list in turn, but you want a vector back, rather than a list.
    # get_more<-sapply(list.files(directory),get_more)
    
       # na_removed<-file_id[!is.na(file_id$sulfate,file_id$nitrate)]
       #nobs<-sum(complete.cases(files_list)) 
       return(get_more)
       #get all correlations + NULLs
       # tcorrs <- unlist(tcorrs[!sapply(tcorrs, is.null)]) 
       #remove NULLs
       # return (tcorrs)
}      
