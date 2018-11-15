# ESTC physical_dimension

This repository is part of the ESTC data unification project by Helsinki Computational History Group ([COMHIS](https://comhis.github.io/)). 

It provides code for processing the physical_dimension (gatherings / book formats) information found in the English Short Title Catalogue (ESTC) and outputs unified and unique data for the ESTC documents.


### Running the workflow

Update the required data folders from Git:
  - estc-data-unified
  - estc-data-verified
  
Rerun python fieldpicker_main.py in estc-raw-csv-prepicker
  repository branch antagomir-physicaldimension. This picks up the
  relevant fields from the original full data.

Run main.R in order to read the raw data and carry out harmonization.

Push the changes in
- this working repo
- data repo estc-data-unified/estc-physicaldimension/

## Input


### ESTC

The main input is the [parsed and prefiltered MARC data](https://github.com/COMHIS/estc-data-verified/blob/master/estc-csv-raw-filtered/estc_raw_sane.csv).

### Input data preparation steps


The [ESTC field picker](https://github.com/COMHIS/estc-raw-csv-prepicker) is used to pick the field 300a (physical dimension) separately. The branch antagomir-physicaldimension contains the Python scripts that were used to generate the parsed data file out/fields_picked_300a.csv Run "python3 fieldpicker_main.py" and check that file paths are ok.

## Data processing

Run the script [main.R](main.R) to convert the raw MARC data into the
final table of harmonized document dimensions. This will read in the
data, harmonize the data, and finally write summary files.

**Running time** is just a few minutes on a normal laptop.


## Output

[Summary file](physical_dimension.md) provides an overview of the harmonized data, and includes links to further
auxiliary files (figures, CSV tables)

The output data tables are available and described in [COMHIS/estc-data-private](https://github.com/COMHIS/estc-data-private/tree/master/estc-physicaldimension).


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
