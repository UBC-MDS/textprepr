#' Generate word cloud
#'
#' @param tweets A vector of tweets
#' @param type One of {"words", "hashtag", "stopwords"}, default="words".
#'    Type of content to show in wordcloud. "words" shows all words,
#'    "hashtag" only shows hashtags,
#'    and "stopwords" does not show common English words.
#'
#' @return A dataframe containing words and their associated frequencies
#' @export
#'
#' @examples
#' tweets <- c("Make America Great Again! @DonaldTrump #America",
#' "It's rocket-science tier investment~~ #LoveElonMusk",
#' "America America America always GREAT",
#' "make america great again! #AMERICA")
#' cloud_df <- generate_cloud(tweets)
generate_cloud <- function(tweets, type = "words") {

  if (!is.character(tweets)) {
    stop("Argument tweets should be a character vector")
  }

  set.seed(1234)

  tweets <- tolower(paste(tweets, collapse = " "))
  tweets <- strsplit(tweets, "\\s+")[[1]]

  if (type == "words") {
    tweets <- tweets[!stringr::str_detect(tweets, "^[#@]")]
    tweets <- remove_punct(tweets, skip = c("'", "-"))
  }
  else if (type == "hashtag") {
    tweets <- tweets[stringr::str_detect(tweets, "^#")]
  }
  else if (type == "stopwords") {
    tweets <- tweets[!stringr::str_detect(tweets, "^[#@]")]
    tweets <- remove_punct(tweets, skip = c("'", "-"))
    tweets <- tweets[
      !tweets %in% stopwords::stopwords("en", source = "nltk")
      ]
  }
  else {
    stop("Make sure the argument type is one of the accepted values")
  }

  tweets_freq <- table(tweets)
  tweets_df <- cbind.data.frame(word = names(tweets_freq),
                                freq = as.integer(tweets_freq))

  wordcloud::wordcloud(words = tweets_df$word, freq = tweets_df$freq,
                       random.order = FALSE, min.freq = 0, max.words = 20,
                       scale = c(2.5, 0.25), rot.per = 0,
                       colors = RColorBrewer::brewer.pal(8, "Dark2"))

  tweets_df
}

