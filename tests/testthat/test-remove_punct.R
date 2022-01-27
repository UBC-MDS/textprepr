tweet_data <- c("Make America Great Again! @DonaldTrump",
                "It's rocket-science tier investment~~ #LoveElonMusk")
exp_out1 <- c("Make America Great Again DonaldTrump",
             "Its rocketscience tier investment LoveElonMusk")
exp_out2 <- c("Make America Great Again @DonaldTrump",
              "It's rocket-science tier investment #LoveElonMusk")

test_that("Punctuation not properly removed",{
  expect_equal(remove_punct(tweet_data), exp_out1)
  expect_equal(remove_punct(tweet_data, skip=c("'", "@", "#", "-")), exp_out2)
  })

test_that("Empty vector not handled",{
  expect_equal(remove_punct(c()), NULL)
  expect_equal(remove_punct(c(), skip=c("'", "@", "#", "-")), NULL)
})

test_that("List object not supported", {
  tweet_list <- list(one = tweet_data[1], two = tweet_data[2])
  list_out1 <-remove_punct(tweet_list)
  list_out2 <-remove_punct(tweet_list, skip = c("'", "@", "#", "-"))
  expect_equal(list_out1$one, exp_out1[1])
  expect_equal(list_out1$two, exp_out1[2])
  expect_equal(list_out2$one, exp_out2[1])
  expect_equal(list_out2$two, exp_out2[2])
})

test_that("Empty lists not handled",{
  expect_equal(remove_punct(list()), list())
  expect_equal(remove_punct(list(), skip=c("'", "@", "#", "-")), list())
})

test_that("Illegal input is not properly handled", {
  expect_error(remove_punct(c(1,2,3)))
  expect_error(remove_punct(list("a", 1.56, 10)))
})
