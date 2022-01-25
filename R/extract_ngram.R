#' Extract n-grams from the input tweets data
#'
#' @param tweets A vector of tweets
#' @param n Length of n-grams to be created
#'    Default is 3. n-grams of length 3 will be created
#'
#' @return Vector of n-grams
#' @export
#'
#' @examples
#' tweets <- c(
#'    "Make", "America", "Great", "Again", "DonaldTrump"
#' )
#' extract_ngram(tweets, n=3)
extract_ngram <- function(tweets, n = 3) {
  if (length(tweets) < n) {
    stop("length of ngrams should be less than number of words in vector of tweets")
  }
  if(!is.character(tweets)) {
    stop("input should be a character vector")
  }

  if (length(tweets) < n) {
    stop("length of ngrams should be less than length of tweets")
  }
  if(!is.character(tweets)) {
    stop("input should be a character vector")
  }

  # tweets_str <- paste(tweets, sep=" ", collapse = NULL)
  tweets_str <- paste(tweets, collapse = " ")
  tweets_str_split <- stringr::str_split(tweets_str, " ")[[1]]
  n <- n - 1

  # print(tweets_str_split)
  output_vec <- character(length(tweets_str_split) - n)
  for(i in 1:length(output_vec)){
    for(j in i:(i+n)){
      output_vec[i] <- stringr::str_c(output_vec[i], tweets_str_split[j], sep = " ")
    }
  }
  output_vec <- stringr::str_remove(output_vec, "\\s{1}")

  output_vec
}
