#' Extracts all hashtags included in the input tweet data list
#'
#' @param tweets A vector of tweets
#'
#' @return Vector of hashtags
#' @export
#'
#' @examples
#' tweets <- c(
#'    "Make America Great Again #DonaldTrump"
#' )
#' extract_hashtags(tweets)
#'
extract_hashtags <- function(tweets) {
  if(!is.character(tweets)) {
    stop("input should be a character vector")
  }
  if(length(tweets)==0) {
    stop("input vector cannot be null")
  }
  output_vec <- stringr::str_extract_all(tweets, "#\\S+")
  output_vec <-   stringr::str_remove_all(unlist(output_vec), "#")
  output_vec
}

