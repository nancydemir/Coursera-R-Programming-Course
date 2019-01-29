pollutantmean <- function(directory,pollutant, id = 1:332) { 
    
    files_list <- as.character(list.files(directory,full.names=TRUE))
         mean_vector<-c()
         for(i in id) {
            current_file <- read.csv(files_list[i], header=T, sep=",")
           # print(head(current_file))
            na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
            mean_vector <- c(mean_vector, na_removed)
        }
       result <- mean(mean_vector)
       return(round(result,3))       
}