
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Nepalwildlife

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/Nepalwildlife)](https://CRAN.R-project.org/package=Nepalwildlife)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

Nepalwildlife package brings together a list of wild animals and plants
found in Nepal. It contains 1 tibble named `nepal_wildlife`.

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

## Steps used to Build the package:

### Initial setup:

1.  Load devtools using `library(devtools)`
2.  Use `create_package(pathname/Nepalwildlife)`. This created a folder
    named **Nepalwildlife** with skeleton for the package contents such
    as DESCRIPTION and an R project file.
3.  In the new Rstudio session that is opened, load usethis package
    using `library(usethis)`
4.  Set up git repo using use\_git(). Perform initial commit and restart
    RStudio to activate the **Git** pane.

### Place the dataset:

1.  Create a directory for raw data using `use_data_raw()`
2.  Add the dataset downloaded from the **Map of Life** in *.csv* form
    into the newly created **data-raw** folder.
3.  Add a R script titled `nepal_wildlife.R` in the folder, which
    converts the csv to a tibble in the .R file.
      - Include `usethis::use_data()` at the bottom of this R script to
        create a .rda data object in the **data** folder
4.  Check to **data** folder in the root directory to see if
    *nepal\_wildlife.rda* object exists.

### Create documentation:

1.  Create a new R script called nepal\_wildlife.R in the **R** folder
    in the root directory.
2.  Create roxygen style documentation in it, ending with the line
    `"nepal_wildlife"`
      - There is not need to use `@export` tag because I am not creating
        any function and it was advised in class not to do so.
3.  Run `document()`

### Tests for package:

1.  `use_testthat()` to create a **tests** folder in the root directory
2.  `use_test("nepal_wildlife")` creates an R file with my tests in it.
3.  Write test codes using `expect_` statements to check if:
      - the variable names of the dataset are as expected.
      - dataset is stored as a tibble
      - the the dataset has expected number of observations.
4.  Check if tests pass using `test()`

### Update DESCRIPTION file:

1.  Open DESCRIPTION file in a code editor
2.  Edit the **Title**, **Authors** and **Description** fields as
    necessary.
3.  Add license info using `usethis::use_mit_license("Abhinab Kadel")`
4.  Add dependencies using `use_package()`. The following packages are
    listed under the **@import** option:
      - Package tests specified above use *dplyr* and *tibble* packages.
      - Vignette uses *stringr* and *ggplot2*

### Add README and vignette:

1.  Create readme using `use_readme_rmd( )` and build it using
    `build_readme( )`.
2.  Create vignette using `use_vignette("nepal_wildlife")` and build it
    using `build_vignette()`.

### Install package:

Use `devtools::install()`

### Linking local repository to a remote repository

1.  Create a remote repository on Github called `Nepalwildlife`
2.  Push package contents from *local* repo to *remote* repo using the
    instructions provided in Github.

### For optional tasks:

1.  Run `usethis::use_code_of_conduct()` to create a code of conduct
    text. Then, paste it to the README file (see below)
2.  Create a NEWS.md file using `use_news_md()`
3.  Run `usethis::use_version()` and select **minor** increment to set
    the package version to 0.1.0
      - This adds a new heading in the NEWS.md file with the package
        name and version nr.
4.  Update information to the [NEWS.md](/NEWS.md) file.
5.  Build the website:
      - Activate **pkgdown** using `usethis::use_pkgdown()`
      - Build website using `pkgdown::build_site()`
      - Push the contents of *root/docs* folder to the remote repository
      - Activate Github Pages through repository settings and select
        *master/docs* as website source.
      - Website can be found
        [here](https://abhinabkadel.github.io/Nepalwildlife/)

#### Rerun `install()` to install the package with the necessary changes.

#### **Note:** In between these steps, I performed `check()` statements to see if there were any errors.

## Code of Conduct

Please note that the Nepalwildlife project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
