#' Remove all punctuation and special characters from the
#' input tweets data
#'
#' @param tweets A vector of tweets
#' @param skip Vector of charcters or NULL.
#'    The set of characters that do not have to be removed.
#'    Default is NULL. If NULL, all characters except alphabets,
#'    numbers and space would be removed.
#'
#' @return Vector of tweets without special characters
#' @export
#'
#' @examples
#' tweets <- c(
#'    "Make America Great Again! @DonaldTrump",
#'     "It's rocket-science tier investment~~ #LoveElonMusk"
#' )
#' remove_punct(tweets)
#' remove_punct(tweets, skip = c("'", "@", "#", "-"))
remove_punct <- function(tweets, skip = NULL) {
  if (is.null(tweets))
    return (NULL)

  if (is.null(skip)){
    match_pattern <- "[^A-Za-z\\s\\d]"
  } else if (is.vector(skip) && is.character(skip)){
    skip_chars = paste(skip, collapse = "")
    match_pattern <- paste("[^A-Za-z\\s\\d", skip_chars, "]", sep="")
  } else {
    stop("Please pass vector of characters to `skip` parameter")
  }

  if (is.vector(tweets) && is.character(tweets)){
    stringr::str_replace_all(tweets, match_pattern, "")
  } else if (is.list(tweets)) {
    # Throw error if not all list elements are character or strings
    if (!purrr::map_lgl(tweets, ~class(.) == "character") |> all()) {
      stop("Only list with all string elements can be passed")
    }
    purrr::map(tweets, ~stringr::str_replace_all(., match_pattern, ""))
  } else {
    stop("Please pass list/vector of strings as the input")
  }
}
