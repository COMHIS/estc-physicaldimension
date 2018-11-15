library(devtools)
load_all("~/Rpackages/bibliographica")
load_all("~/Rpackages/estc")

library(ggplot2)
library(devtools)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)
library(magrittr)

catalog <- "estc"
field <- "physical_dimension"

# Data folder
private_data_folder <- "./"

# Input
parsed_csv <- "estc-raw-csv-prepicker/out/fields_picked_300c.csv"

# Output
private_data_folder <- "estc-data-unified/"
global_outpath <- paste0(private_data_folder, "estc-physicaldimension/")
polished_csv <- paste0(global_outpath, field, ".csv")

# Load initial CSVs (time consuming, hence load Rds instead, if available)
df.orig <- read_parsed_fields(parsed_csv, field = 300, subfield = "c")

# Manually discard invalid dimension entries
# that lead to the few duplicates (n=11)
x <- subset(df.orig, Record_seq %in% df.orig[duplicated(df.orig$Record_seq), 1])



x <- df.orig %>% select(Record_seq, system_control_number) %>% unique()
spl <- split(x$system_control_number, x$Record_seq)
if (any(sapply(spl, length)>1)) {
  stop("Duplicated Record_seq vs 035a")
  print(spl[which(sapply(spl, length)>1)])
}
# Problem; system_control_number not unique?
#df.orig <- read_parsed_fields(parsed_csv, field = 300, subfield = "c", n = 1e3)

# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1e4),] # random 

