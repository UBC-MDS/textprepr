
<!-- README.md is generated from README.Rmd. Please edit that file -->

# textprepr

<!-- badges: start -->
<!-- badges: end -->

This is an R package that offers additional text preprocessing
functionality specifically designed for tweets. The package bundles
functions to help with cleaning and gaining insight into tweet data,
providing additional resources for EDA or enabling feature engineering.

The main functions of this package are:

    - remove_punct : Removes punctuation from a vector with tweets

    - extract_ngram: Extracts n-grams from a vector with tweets

    - extract_hashtags: Creates a list of hashtags from a vector with tweets

    - generate_cloud: Creates a word cloud of the most frequent words from a vector with tweets

Our package can be leveraged to clean tweet data and extract new
features.

## Installation

You can install the released version of textprepr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("textprepr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(textprepr)
tweets <- c(
    "Make America Great Again! @DonaldTrump",
    "It's rocket-science tier investment~~ #LoveElonMusk"
)

remove_punct(tweets, skip = c("'", "@", "#", "-"))
#> NULL
```

## Contributing

Contributors: Arijeet Chatterjee, Joshua Sia, Melisa Maidana, Philson
Chan (DSCI_524_GROUP21).

Interested in contributing? Check out the contributing guidelines.

Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## License

`textprepr` was created by Arijeet Chatterjee, Joshua Sia, Melisa
Maidana, Philson Chan (DSCI_524_GROUP21).

It is licensed under the terms of the MIT license.
