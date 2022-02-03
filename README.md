
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

In the R ecosystem there are no packages focused on preprocessing tweet
data. The popular
[`tweeteR`](https://www.rdocumentation.org/packages/twitteR/versions/1.1.9)
package is oriented to provide access to the Twitter API, but any data
cleaning should be done using general text processing packages such as
[`stringr`](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html).
Our package fill the niche since it can be leveraged to clean tweet data
and extract new features.

## Documentation

You can view our package documentation on GitHub Pages
[here](ubc-mds.github.io/textprepr/).

## Installation

You can install the released version of textprepr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/textprepr")
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
#> [1] "Make America Great Again @DonaldTrump"            
#> [2] "It's rocket-science tier investment #LoveElonMusk"
```

## Contributing

Contributors: Arijeet Chatterjee, Joshua Sia, Melisa Maidana, Philson
Chan (DSCI_524_GROUP21).

Interested in contributing? Check out the [contributing
guidelines](https://github.com/UBC-MDS/textprepr/blob/main/.github/CONTRIBUTING.md)

Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## License

`textprepr` was created by Arijeet Chatterjee, Joshua Sia, Melisa
Maidana, Philson Chan (DSCI_524_GROUP21).

It is licensed under the terms of the MIT license.
