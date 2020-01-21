output.folder <- "output.tables/"
dir.create(output.folder)

# ------------------------------

# List preprocessed data files
df <- df.preprocessed
id <- field
f <- knit(input = "physical_dimension.Rmd", 
          output = "physical_dimension.md") 

message("Physical dimension info")
tab <- cbind(original = df.orig$value,
             df.preprocessed[, c("gatherings.original", "width.original", "height.original", "obl.original", "gatherings", "width", "height", "obl", "area")])
write.table(tab, file = paste0(output.folder, "conversions_physical_dimension.csv"), sep = "\t", quote = FALSE, row.names = FALSE)

# Accepted / Discarded dimension info
inds <- which(is.na(df.preprocessed[["area"]]))
x <- cbind(original = as.character(df.orig$value)[inds],
          df.preprocessed[inds, c("gatherings", "width", "height", "obl")])
tmp <- write.table(x,
    paste(output.folder, paste("physical_dimension_incomplete.csv", sep = "_"), sep = ""),
    sep = "\t", quote = FALSE, row.names = FALSE)


