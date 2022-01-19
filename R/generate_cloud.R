#' Generate word cloud
#'
#' @param tweets A vector of tweets
#' @param type One of {"words", "hashtag", "stopwords"}, default="words".
#'    Type of content to show in wordcloud. "words" shows all words,
#'    "hashtag" only shows hashtags,
#'    and "stopwords" does not show common English words.
#'
#' @return A plot figure
#' @export
#'
#' @examples
#' tweets <- c("Make America Great Again! @DonaldTrump #America",
#' "It's rocket-science tier investment~~ #LoveElonMusk",
#' "America America America")
#' generate_cloud(tweets)
generate_cloud <- function(tweets, type = "words") {

}
