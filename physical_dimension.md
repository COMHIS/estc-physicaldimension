---
title: "Document dimension preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2018-11-16"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 382181 documents (99.5%) but could not be interpreted for 8954 documents (ie. dimension info was successfully estimated for 97.7 % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 375942 documents (98%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface could not be estimated](physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for 369704 documents (96%), and further estimated up to 373227 documents (97%) in the final preprocessed data.

  * Document height info is originally available for 8034 documents (2%), and further estimated up to 375942 documents (98%) in the final preprocessed data.

  * Document width info is originally available for 3762 documents (1%), and further estimated up to 375942 documents (98%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)



The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


<!--[Discarded dimension info](dimensions_discarded.csv)-->

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
## Error in `$<-.data.frame`(`*tmp*`, publication_time, value = numeric(0)): replacement has 0 rows, data has 373227
```

```
## Error in print(res$plot): object 'res' not found
```

```
## Error in `$<-.data.frame`(`*tmp*`, "publication_time", value = numeric(0)): replacement has 0 rows, data has 373227
```

```
## Error in print(res$plot): object 'res' not found
```


## Average document dimensions 

Here we use the original data only:


```
## Error in .f(.x[[i]], ...): object 'publication_decade' not found
```

```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_decade` is unknown
```

```
## Error in FUN(X[[i]], ...): object 'publication_decade' not found
```

![plot of chunk avedimstime](output.tables/figure/avedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|1to                 |      28.81|        28.81|       41.17|         41.17|  18|
|2fo                 |      20.28|        20.28|       37.51|         37.51| 598|
|4to                 |      18.43|        18.43|       21.31|         21.31| 427|
|8vo                 |      16.50|        16.50|       19.51|         19.51| 633|
|12mo                |      11.50|        11.50|       15.69|         15.69| 104|

-->
