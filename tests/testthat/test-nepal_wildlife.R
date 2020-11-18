test_that("dataset has given column names", {
  expect_true("Family" %in% names(nepal_wildlife))
  expect_true("Scientific Name" %in% names(nepal_wildlife))
  expect_true("Common Name" %in% names(nepal_wildlife))
  expect_true("Taxonomic Group" %in% names(nepal_wildlife))
})

test_that("dataset has specific characters", {
  # check if dataset is a tibble
  expect_true(tibble::is_tibble(nepal_wildlife))

  # check if dataset is of given length
  expect_length( dplyr::pull(nepal_wildlife[1]), 1409)
})
