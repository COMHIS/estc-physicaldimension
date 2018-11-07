# ESTC physical_dimension

This repository is part of the ESTC data unification project by Helsinki Computational History Group ([COMHIS](https://comhis.github.io/)). 

It provides code for processing the physical_dimension (gatherings / book formats) information found in the English Short Title Catalogue (ESTC) and outputs unified and unique data for the ESTC documents.


## Input

#### ESTC input

The main input is the [parsed and prefiltered MARC data](https://github.com/COMHIS/estc-data-verified/blob/master/estc-csv-raw-filtered/estc_raw_sane.csv).


### Input data preparation steps


The [ESTC field picker](https://github.com/COMHIS/estc-raw-csv-prepicker) is used to pick the field 300a (physical dimension) separately. The folder [pick_300a](pick_300a) contains the Python scripts that were used in the estc-raw-csv-prepicker folder to generate the parsed data file fields_picked_300a.csv



### Input UML

> TBD


## Data processing

Run the script [main.R](main.R) to convert the raw MARC data into the final
table of document dimensions.

Further details will be added.


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
