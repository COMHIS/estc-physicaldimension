---
title: "Document dimension preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2020-04-14"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 471076 documents (97.9%) but could not be interpreted for 6003 documents (ie. dimension info was successfully estimated for 98.7 % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 466698 documents (97%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface area could not be estimated](output.tables/physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for 464163 documents (96%), and further estimated up to 465073 documents (97%) in the final preprocessed data.

  * Document height info is originally available for 4649 documents (1%), and further estimated up to 466698 documents (97%) in the final preprocessed data.

  * Document width info is originally available for 0 documents (0%), and further estimated up to 466698 documents (97%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](output.tables/conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)


The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)

  * [Discarded entries (curated)](rejected_entries_curated.csv); these entries have been curated, and confirmed to contain no interpretable dimension information. These are discarded before other processing.

  * [Discarded entries (non-curated)](rejected_entries_noncurated.csv); these entries have not been curated, and they could not be interpreted for dimension information. 


Left: final gatherings vs. final document dimension (width x height). Right: original gatherings versus original heights where both are available. The point size indicates the number of documents for each case. The red dots indicate the estimated height that is used when only gathering information is available. 

<img src="output.tables/figure/summary-1.png" title="plot of chunk summary" alt="plot of chunk summary" width="420px" /><img src="output.tables/figure/summary-2.png" title="plot of chunk summary" alt="plot of chunk summary" width="420px" />


Left: Document dimension histogram (surface area);
Right: title count per gatherings.

<img src="output.tables/figure/sizes-1.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="420px" /><img src="output.tables/figure/sizes-2.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="420px" />



<!--

### Gatherings timelines



Popularity of different document sizes over time. Left: absolute title
counts. Right: relative title counts. Gatherings with less than `r
nmin` documents at every decade are excluded:


```
## Error in `$<-.data.frame`(`*tmp*`, publication_time, value = numeric(0)): replacement has 0 rows, data has 465073
```

```
## Error in print(res$plot): object 'res' not found
```

```
## Error in `$<-.data.frame`(`*tmp*`, "publication_time", value = numeric(0)): replacement has 0 rows, data has 465073
```

```
## Error in print(res$plot): object 'res' not found
```


## Average document dimensions 

Here we use the original data only:


```
## Error: Can't subset columns that don't exist.
## [31m✖[39m The column `publication_decade` doesn't exist.
```

```
## Error: Must group by variables found in `.data`
## * Column `publication_decade` is not found
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

![plot of chunk avedimstime](output.tables/figure/avedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|1to                 |        NaN|          NaN|       43.50|         43.50|  12|
|2fo                 |        NaN|          NaN|       37.11|         37.11| 772|
|4to                 |        NaN|          NaN|       21.69|         21.69| 510|
|8vo                 |        NaN|          NaN|       19.25|         19.25| 677|
|12mo                |        NaN|          NaN|       15.58|         15.58| 107|
|16mo                |        NaN|          NaN|       10.95|         10.95|  22|
|18mo                |        NaN|          NaN|       14.67|         14.67|   3|

-->
