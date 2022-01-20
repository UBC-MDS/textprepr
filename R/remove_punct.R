#' Generate word cloud
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

}
