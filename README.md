
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Nepalwildlife

<!-- badges: start -->

<!-- badges: end -->

Nepalwildlife package brings together a list of wild animals and plants
found in Nepal. It contains of 1 tibble named `nepal_wildlife`.

## Installation

You can install the released version of Nepalwildlife from
[Github](https://github.com/abhinabkadel/Nepalwildlife) with:

``` r
install.packages("devtools")
devtools::install("abhinabkadel/Nepalwildlife")
```

## Example

How many species fall under different taxonomic groups in Nepal? Let’s
solve it using the dataset:

``` r
library(Nepalwildlife) 
library(tidyverse)

nepal_wildlife %>% 
  count (`Taxonomic Group`)
#> # A tibble: 8 x 2
#>   `Taxonomic Group`        n
#>   <chr>                <int>
#> 1 Amphibians              58
#> 2 Birds                  852
#> 3 Butterflies             26
#> 4 Conifers                23
#> 5 Mammals                217
#> 6 Reptiles                44
#> 7 Sphingid moths         174
#> 8 Turtles (non-marine)    15
```
