test_that("generate_cloud throws an error if argument
          tweets is not a character vector", {
            expect_error(generate_cloud(c(1, 2)))
            expect_error(generate_cloud(c(TRUE, FALSE)))
            expect_error(generate_cloud(c(1L, 2L)))
            })

test_that("generate_cloud throws an error if argument
          type is not one of words, hashtag or stopwords", {
            expect_error(generate_cloud("tweets", type = "invalid"))
            expect_error(generate_cloud("tweets", type = "WORDS"))
            expect_error(generate_cloud("tweets", type = 10))
          })

test_that("generate_cloud shows the wrong proportion of words", {
  tweets <- c("Make America Great Again! @DonaldTrump #America",
              "It's rocket-science tier investment~~ #LoveElonMusk",
              "America America America always GREAT",
              "make america great again! #AMERICA")

  expected_hashtag <- data.frame(
    word = c("#america", "#loveelonmusk"),
    freq = c(2L, 1L)
  )

  actual_hashtag <- generate_cloud(tweets, type = "hashtag")
  expect_identical(actual_hashtag, expected_hashtag)
})
