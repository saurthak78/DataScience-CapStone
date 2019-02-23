# This scripts download the data from the link provided for the 
# CapStone project.

library(downloader)

url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"

download(url, dest = "dataset.zip", mode = "wb")
unzip("dataset.zip", exdir = "./CapStone/training data")


