# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings
# (also keep pure originals before fill in)
df.tmp <- polish_dimensions(df.orig$value, fill = FALSE, verbose = TRUE)

# Enrich dimensions before pagecount (some dimensions reclassified)
df.preprocessed <- enrich_dimensions(df.tmp)

# Add the entry IDs
df.preprocessed$system_control_number <- df.orig$system_control_number

print("Saving updates on preprocessed data")
# CSV format
print(paste("Writing to", polished_csv))
write.table(df.preprocessed, file = polished_csv, sep = "\t", quote = FALSE, row.names = FALSE)
# Compress the CSV if over ~50Mb
if (file.info(polished_csv)$size/1e6 > 50) {
  system(paste("gzip", polished_csv))
}

