
dird="C:\\Users\\Emily\\Documents\\STAT\\MATH4753\\LAB\\LAB4\\"
#' File Reading Function
#'
#'Takes a CSV file, read in the data
#' @param csv
#'
#' @return the data read in from the csv file
#' @export
#'
#' @examples
#' csv = "spruce.csv"; myread(csv)
myread=function(csv){
  fl = paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}

