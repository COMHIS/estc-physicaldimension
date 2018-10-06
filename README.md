# ESTC physical_dimension

This repository is part of the ESTC data unification project by Helsinki Computational History Group ([COMHIS](https://comhis.github.io/)). 

It provides code for processing the physical_dimension (gatherings / book formats) information found in the English Short Title Catalogue (ESTC) and outputs unified and unique data for the ESTC documents.


## Input

#### ESTC input

The main input is the [parsed MARC data](https://github.com/COMHIS/estc-data-private/blob/master/estc-csv-raw/estc_parsed.csv.gz).

The fields used are:
* physical_dimension


### Input data preparation steps

No particular preparations. Reads in the raw MARC data entries (from
parsed CSV), and harmonizes them.



### Input UML

> TBD



## Data processing

Run the script [main.R](main.R) to convert the raw MARC data into the final
table of document dimensions.

This will read in the data, harmonize the data, and finally write
summary files.


### Output

 * [Data](estc-data-private/estc-physicaldimension/) (multiple formats
   such as CSV/Rds may be generated but their contents are identical)

 * [Summary file](output.tables/physical_dimension.md). This includes
   links to further auxiliary files (figures, CSV tables)


### UML Overview

> TBD


## Output

The output are in the directory specied in the `global_outpath` variable set in `init.R`.

The polished dimension field is stored in that directory in the following variables set in `init.R`:

- polished_rds (Rds)
- polished_csv (CSV)


### Final output csv

The fields of the final output csv/rds are as follows:

* **gatherings.original** - Gatherings in the original entry
* **width.original** - Width in the original entry
* **height.original** - Height in the original entry
* **obl.original** - Obl. in the original entry (horizontally printed document)
* **gatherings** - Gatherings: original and estimated (when missing from original entry)
* **width** - Width: original and estimated (when missing from original entry)
* **height** - Height: original and estimated (when missing from original entry)
* **obl** - Obl: original and estimated (when missing from original entry)
* **area** - Area: estimated document area (height x width) 

Latest version of the final output table is at [ESTC private data repository](https://github.com/COMHIS/estc-data-private/tree/master/estc-physicaldimensions/physical_dimension.csv).


## Automated summaries

The output are in the directory specied in `output.folder`.

The conversions are summarized in: [physical_dimension.md](https://github.com/COMHIS/estc-physicaldimension/tree/master/physical_dimension.md).


## Software version

```{r}
R.Version()
```
