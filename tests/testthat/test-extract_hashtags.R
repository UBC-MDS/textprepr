# Test for function extract_hashtag
helper_data_1 <- c("If only Bradley's arm was longer. Best photo ever. #oscars",
            "hello literally everyone",
            "Congratulations to the Astronauts that left Earth today. Good choice",
            "We LOVE this idea, Happy  100th Birthday Betty! #BettyWhiteChallenge #HappyBirthdayBettyWhite #MondayMotivation",
            "“When You're Accustomed to Privilege, Equality Feels Like Oppression.” #DjokovicOut #Djokovic #Djocovid #djokovicgohome  #AusOpen #AO2022"
)

helper_data_2 <- c("Make America Great Again @DonaldTrump")

expected_hashtags_1 <- c(
    "oscars",
    "BettyWhiteChallenge", 
    "HappyBirthdayBettyWhite",
    "MondayMotivation",
    "DjokovicOut",
    "Djokovic",
    "Djocovid",
    "djokovicgohome",  
    "AusOpen", 
    "AO2022"
)

test_that("extract_hashtags input is not a character vector", {
    expect_error(extract_hashtags(NULL))
    expect_error(extract_hashtags(1))
    expect_error(extract_hashtags(FALSE))
    expect_error(extract_hashtags(c(1, 2, 3)))
})

test_that("extract_hashtags output is incorrect", {
    expect_equal(extract_hashtags(helper_data_1), expected_hashtags_1)
    expect_equal(length(extract_hashtags(helper_data_2)), 0)
})