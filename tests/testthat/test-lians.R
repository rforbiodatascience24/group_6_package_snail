test_that("lians function works", {
  result <- lians(5)

  # Test that the result is of the correct length
  expect_equal(nchar(result), 5)

  # Test that the result contains only A, T, G, or C
  expect_true(all(strsplit(result, "")[[1]] %in% c("A", "T", "G", "C")))
})

