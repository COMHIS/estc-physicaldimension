# ESTC physical_dimension

This repository is part of the ESTC data unification project by Helsinki Computational History Group ([COMHIS](https://comhis.github.io/)). 

It provides code for processing the physical_dimension (gatherings / book formats) information found in the English Short Title Catalogue (ESTC) and outputs unified and unique data for the ESTC documents.


## Input

### ESTC

The main input is the [parsed MARC data](https://github.com/COMHIS/estc-data-private/blob/master/estc-csv-raw/estc_parsed.csv.gz).

The fields used are:
* physical_dimension


## Data processing

Run the script [main.R](main.R) to convert the raw MARC data into the
final table of harmonized document dimensions. This will read in the
data, harmonize the data, and finally write summary files.



## Output

[Summary file](physical_dimension.md) provides an
overview of the harmonized data, and includes links to further
auxiliary files (figures, CSV tables)


The [output data files](estc-data-private/estc-physicaldimension/) are in ``estc-data-private/estc-physicaldimension/`` in Rds and CSV formats:

- ``estc-data-private/estc-physicaldimension/physical_dimension.Rds`` (Rds)
- ``estc-data-private/estc-physicaldimension/physical_dimension.csv`` (CSV)


The data has the following output fields:

* **gatherings.original** - Gatherings in the original entry
* **width.original** - Width in the original entry
* **height.original** - Height in the original entry
* **obl.original** - Obl. in the original entry (horizontally printed document)
* **gatherings** - Gatherings: original and estimated (when missing from original entry)
* **width** - Width: original and estimated (when missing from original entry)
* **height** - Height: original and estimated (when missing from original entry)
* **obl** - Obl: original and estimated (when missing from original entry)
* **area** - Area: estimated document area (height x width) 


## Software version


```r
R.Version()
```

```
## $platform
## [1] "x86_64-pc-linux-gnu"
## 
## $arch
## [1] "x86_64"
## 
## $os
## [1] "linux-gnu"
## 
## $system
## [1] "x86_64, linux-gnu"
## 
## $status
## [1] ""
## 
## $major
## [1] "3"
## 
## $minor
## [1] "5.1"
## 
## $year
## [1] "2018"
## 
## $month
## [1] "07"
## 
## $day
## [1] "02"
## 
## $`svn rev`
## [1] "74947"
## 
## $language
## [1] "R"
## 
## $version.string
## [1] "R version 3.5.1 (2018-07-02)"
## 
## $nickname
## [1] "Feather Spray"
```
