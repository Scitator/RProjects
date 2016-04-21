pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  data <- data.frame();
  files <- list.files(directory, full.names = TRUE);
  
  for (index in id) {
    data <- rbind(data, read.csv(files[index], comment.char = ""))
  }
  
  mean(data[[pollutant]], na.rm = TRUE);
}