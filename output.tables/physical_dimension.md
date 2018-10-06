---
title: "Document dimension preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2018-10-06"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 0 documents (0%) but could not be interpreted for 0 documents (ie. dimension info was successfully estimated for NaN % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 472128 documents (98%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface could not be estimated](physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for NA documents (NA%), and further estimated up to NA documents (NA%) in the final preprocessed data.

  * Document height info is originally available for 8479 documents (2%), and further estimated up to 472128 documents (98%) in the final preprocessed data.

  * Document width info is originally available for 3799 documents (1%), and further estimated up to 472128 documents (98%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)



The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](dimensions_discarded.csv)-->

Left: final gatherings vs. final document dimension (width x height). Right: original gatherings versus original heights where both are available. The point size indicates the number of documents for each case. The red dots indicate the estimated height that is used when only gathering information is available. 



```
## Error in filter_impl(.data, quo): Evaluation error: object 'paper' not found.
```

```
## Error in `[.data.frame`(dfs, , c("gatherings", "paper")): undefined columns selected
```

<img src="output.tables/figure/summary-1.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="output.tables/figure/summary-2.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="output.tables/figure/summary-3.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" />


Left: Document dimension histogram (surface area);
Middle: Paper consumption histogram;
Right: title count per gatherings.


```
## Error in FUN(X[[i]], ...): object 'paper' not found
```

<img src="output.tables/figure/sizes-1.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" /><img src="output.tables/figure/sizes-2.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" />

### Gatherings timelines




Popularity of different document sizes over time. Left: absolute title counts. Right: relative title counts. Gatherings with less than 15 documents at every decade are excluded:



```
## Error in `$<-.data.frame`(`*tmp*`, publication_time, value = numeric(0)): replacement has 0 rows, data has 469408
```

```
## Error in print(res$plot): object 'res' not found
```

```
## Error in `$<-.data.frame`(`*tmp*`, "publication_time", value = numeric(0)): replacement has 0 rows, data has 469408
```

```
## Error in print(res$plot): object 'res' not found
```


### Title count versus paper consumption




```
## Error in grouped_df_impl(data, unname(vars), drop): Column `publication_year` is unknown
```

```
## Error in ggplot(d, aes(y = n, x = p)): object 'd' not found
```

![plot of chunk title_vs_paper](output.tables/figure/title_vs_paper-1.png)

<!--


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
|1to                 |      29.06|        29.06|       41.97|         41.97|  29|
|2fo                 |      21.96|        21.96|       36.87|         36.87| 843|
|4to                 |      18.81|        18.81|       21.78|         21.78| 546|
|8vo                 |      16.33|        16.33|       19.24|         19.24| 684|
|12mo                |      12.00|        12.00|       15.53|         15.53| 110|
|16mo                |      11.00|        11.00|       11.04|         11.04|  23|
|18mo                |      10.00|        10.00|       11.40|         11.40|   5|

-->
