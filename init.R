library(devtools)
load_all("bibliographica")
load_all("estc")

library(ggplot2)
library(devtools)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
#library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)
library(magrittr)

catalog <- "estc"
field <- "physical_dimension"

# Input
parsed_csv <- "estc-raw-csv-prepicker/out/fields_picked_300c.csv"

# Output
private_data_folder <- "estc-data-unified/"
global_outpath <- paste0(private_data_folder, "estc-physicaldimension/")
polished_csv <- paste0(global_outpath, field, ".csv")

# Load initial CSVs (time consuming, hence load Rds instead, if available)
df.orig <- read_parsed_fields(parsed_csv, field = 300, subfield = "c")
names(df.orig) <- gsub("300c", "value", names(df.orig))

# Only pick the sane entries
ids <- read.csv("estc-data-verified/estc-csv-raw-filtered/record_seq_estc_id_pairs.csv", header = TRUE)
ids <- subset(ids, category == "sane") %>% unique()
df.orig <- subset(df.orig, Record_seq %in% ids$record_seq)
# Store a record of all original values
original.values <- df.orig$value

# Discard entries that have been curated and confirmed to contain no dimension information
tab <- read.csv("rejected_entries_curated.csv", sep = "\t", header = TRUE)
rejected.entries <- as.character(tab$value)
df.orig$value[df.orig$value %in% rejected.entries] <- NA

# There are a few cases where a document has multiple dimension entries
# For instance:
# subset(df.orig, system_control_number %in% n)
# 72701       (CU-RivES)P2224                     12⁰.
# 72701       (CU-RivES)P2224              11 x 15 cm.

# Combine these manually by semicolon
n <- df.orig$system_control_number[which(duplicated(df.orig$system_control_number))]
s <- subset(df.orig, system_control_number %in% n)
f <- sapply(split(s$value, s$system_control_number), function (x) {paste(unlist(x), collapse = "; ")})
inds <- match(names(f), df.orig$system_control_number)
# Replace the first value of the duplicate document with the new merged version
df.orig[inds, "value"] <- f
# Remove the remaining duplicates after mering
inds2 <- setdiff(which(df.orig$system_control_number %in% names(f)), inds)
df.orig <- df.orig[-inds2,]

# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1e4),] # random 

