# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings
# (also keep pure originals before fill in)
df.tmp <- bibliographica::polish_dimensions(df.orig[[field]], fill = FALSE, verbose = TRUE)

# Enrich dimensions before pagecount (some dimensions reclassified)
df.preprocessed <- enrich_dimensions(df.tmp)

# Add the entry IDs
ids <- df.orig[, c("control_number", "system_control_number")]
df.preprocessed <- cbind(ids, df.preprocessed)

print("Saving updates on preprocessed data")
# Rds format
saveRDS(df.preprocessed, polished_rds, compress = TRUE)
# CSV format
write.table(df.preprocessed, file = polished_csv, sep = "\t", quote = FALSE, row.names = FALSE)
# Compress the CSV if over ~50Mb
if (file.info(polished_csv)$size/1e6 > 50) {
  system(paste("gzip", polished_csv))
}

