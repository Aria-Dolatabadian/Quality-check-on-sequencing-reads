#Place your fastq files in WD (mine was C:/Users/00090473/RWD)

library(Rqc)
library(ShortRead)

a <- readFastq(paste0(folder, "/a.fastq"))
b <- readFastq(paste0(folder, "/b.fastq"))

path_to_fastq_files <- "C:/Users/00090473/RWD"  # change to your WD

qcRes <- rqc(path = path_to_fastq_files, pattern = ".fastq", openBrowser = FALSE) 


rqcCycleQualityBoxPlot(qcRes)


#Check the path provided for the rqc_report.html 
