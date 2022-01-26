# Test for function extract_ngram
helper_data <- c("Make", "America", "Great", "Again", "DonaldTrump")
test_that("Generated ngrams is incorrect", {
  expect_equal(extract_ngram(helper_data, n=1), c("Make", "America", "Great", "Again", "DonaldTrump"))
  expect_equal(extract_ngram(helper_data, n=3), c("Make America Great", "America Great Again", "Great Again DonaldTrump"))
  expect_equal(extract_ngram(helper_data, n=4), c("Make America Great Again", "America Great Again DonaldTrump"))
  expect_equal(extract_ngram(helper_data, n=5), c("Make America Great Again DonaldTrump"))
})
test_that("Length of ngrams should be less than number of words in vector of tweets", {
  expect_error(extract_ngram(helper_data, n=10))
})

test_that("Input should be character vector", {
  expect_error(extract_ngram(data.frame(), n=10))
})
