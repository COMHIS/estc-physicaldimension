# ESTC Physical Dimension

This repository is part of the ESTC data unification project by
Helsinki Computational History Group
([COMHIS](https://comhis.github.io/)).


## Output

The workflow provides code and outcomes for processing the physical dimension
(gatherings / book formats) information found in the English Short
Title Catalogue (ESTC).

 - [Automated summaries](physical_dimension.md): overview of harmonization and links to supporting data
 - [Output data tables](https://github.com/COMHIS/estc-data-unified/tree/master/estc-physicaldimension).


## Input

After setup, the **running time** is just a few minutes on a normal laptop.

### ESTC


### Input data preparation steps

Update the required data folders from Git:
  - estc-data-unified
  - estc-data-verified

The main input is the [parsed and prefiltered MARC data](https://github.com/COMHIS/estc-data-verified/blob/master/estc-csv-raw-filtered/estc_raw_sane.csv).

Use the [ESTC field picker](https://github.com/COMHIS/estc-raw-csv-prepicker) is used to pick the field 300a (physical dimension) separately. The branch antagomir-physicaldimension contains the Python scripts that were used to generate the parsed data file out/fields_picked_300a.csv Run "python3 fieldpicker_main.py" and check that file paths are ok.


## Data processing

Run the script [main.R](main.R) to convert the raw MARC data into the
final table of harmonized document dimensions. This will read in the
data, harmonize the data, and finally write summary files.

Remember to push the changes in
- this working repo
- data repo estc-data-unified/estc-physicaldimension/


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
## [1] "6.1"
## 
## $year
## [1] "2019"
## 
## $month
## [1] "07"
## 
## $day
## [1] "05"
## 
## $`svn rev`
## [1] "76782"
## 
## $language
## [1] "R"
## 
## $version.string
## [1] "R version 3.6.1 (2019-07-05)"
## 
## $nickname
## [1] "Action of the Toes"
```
