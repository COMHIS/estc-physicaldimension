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
# Sort unique cases by frequency
tab <- as_tibble(tab) %>% group_by(original, gatherings.original,
                                   width.original, height.original, obl.original,
				   gatherings, width, height, obl, area) %>%
			  summarize(n = n()) %>%
			  arrange(desc(n)) %>%			  
			  ungroup() %>%
			  mutate(n_cum = cumsum(n))			  
tab$f <- round(100 * tab$n/sum(tab$n), 1)
tab$f_cum <- round(100 * tab$n_cum/sum(tab$n), 1)
write.table(tab, file = paste0(output.folder, "conversions_physical_dimension.csv"), sep = "\t", quote = FALSE, row.names = FALSE)


message("Rejected entries / curated")
# Add specific values in the curated rejections
curated.rejection <- original.values[grep("[0-9]{4}", original.values)]
rejected.entries <- unique(c(rejected.entries, curated.rejection))
rejected.table <- rev(sort(table(original.values[original.values %in% rejected.entries])))
tab <- data_frame(value.original = names(rejected.table), n = unname(rejected.table))			      
write.table(tab, file = "rejected_entries_curated.csv", quote = FALSE, row.names = FALSE, sep = "\t")

message("Rejected entries / noncurated")
inds <- which(!is.na(df.orig$value) & (!df.orig$value %in% rejected.entries) & is.na(df.preprocessed$area))
vals <- df.orig$value[inds]
tab <- rev(sort(table(vals)))
tab <- data_frame(value.original = names(tab), n = unname(tab))			      
write.table(tab, file = "rejected_entries_noncurated.csv", quote = FALSE, row.names = FALSE, sep = "\t")

message("Incomplete dimension info")
inds <- which(is.na(df.preprocessed[["area"]]))
x <- cbind(original = as.character(df.orig$value)[inds],
          df.preprocessed[inds, c("gatherings", "width", "height", "obl")])

# Prepare printable table
xout <- x %>% group_by(original, gatherings, width, height, obl) %>%
              tally() %>%
	      arrange(desc(n))

tmp <- write.table(xout,
    paste(output.folder, paste("physical_dimension_incomplete.csv", sep = "_"), sep = ""),
    sep = "\t", quote = FALSE, row.names = FALSE)


