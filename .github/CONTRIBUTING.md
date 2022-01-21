# Contributing to textprepr

This outlines how to propose a change to textprepr.
For more detailed info about contributing to this, and other tidyverse packages, please see the [**development contributing guide**](https://rstd.io/tidy-contrib).

## Type of Contributions
### Report Bugs

If you are reporting a bug, please open a GitHub issue, which include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.

### Fixing typos

You can fix typos, spelling mistakes, or grammatical errors in the documentation directly using the GitHub web interface, as long as the changes are made in the *source* file.
This generally means you'll need to edit [roxygen2 comments](https://roxygen2.r-lib.org/articles/roxygen2.html) in an `.R`, not a `.Rd` file.
You can find the `.R` file that generates the `.Rd` by reading the comment in the first line.

### Write Documentation

You can never have enough documentation! Please feel free to contribute to any
part of the documentation, such as the official docs, docstrings, or even 
on the web in blog posts, articles, and such. For docstrings, please make you follow the roxygen2 format. 

### Other changes

If you want to make a bigger change, it's a good idea to first file an issue and make sure someone from the team agrees that it's needed.
If you've found a bug, please file an issue that illustrates the bug with a minimal [reprex](https://www.tidyverse.org/help/#reprex) (this will also help you write a unit test, if needed).

## Pull request process

-   Fork the package and clone onto your computer.
    If you haven't done this before, we recommend using `usethis::create_from_github("UBC-MDS/textprepr", fork = TRUE)`.

-   Install all development dependences with `devtools::install_dev_deps()`, and then make sure the package passes R CMD check by running `devtools::check()`.
    If R CMD check doesn't pass cleanly, it's a good idea to ask for help before continuing.

-   Create a Git branch for your pull request (PR).
    We recommend using `usethis::pr_init("brief-description-of-change")`.

-   Make your changes, commit to git, and then create a PR by running `usethis::pr_push()`, and following the prompts in your browser.

-   When commiting your changes, please write meaningful commit messages to summarize your changes. Please refer to [this article](https://cbea.ms/git-commit/) as 
    a proper guideline of commit messages.

-   For user-facing changes, add a bullet to the top of `NEWS.md` (i.e. just below the first header).
    Follow the style described in <https://style.tidyverse.org/news.html>.

## Pull Request Guidelines

Before you submit a pull request, check that it meets these guidelines:

1. The pull request should include additional tests if appropriate.
2. If the pull request adds functionality, the docs should be updated.
3. The pull request should work for all currently supported operating systems and versions of Python.
4. The pull request shall include a brief description that explain the modification made and purpose of improvement.

## Code style

-   New code should follow the tidyverse [style guide](https://style.tidyverse.org).
    You can use the [styler](https://CRAN.R-project.org/package=styler) package to apply these styles, but please don't restyle code that has nothing to do with your PR.

-   We use [roxygen2](https://cran.r-project.org/package=roxygen2), with [Markdown syntax](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), for documentation.

-   We use [testthat](https://cran.r-project.org/package=testthat) for unit tests.
    Contributions with test cases included are easier to accept.

## Code of Conduct

Please note that the textprepr project is released with a [Contributor Code of Conduct](../CODE_OF_CONDUCT.md).
By contributing to this project you agree to abide by its terms.
