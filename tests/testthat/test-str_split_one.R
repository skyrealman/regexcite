test_that("str_split_one() split a string", {
  expect_equal(str_split_one(string = "a,b,c", pattern = ","), c("a", "b", "c"))
})

test_that("str_split_one() errors if input length > 1", {
  expect_error(str_split_one(string = c("a,b", "b,c"), pattern = ","))
})

test_that("str_split_one() split a string with n = 2", {
  expect_equal(str_split_one(string = "a,b,c", pattern = ",", n = 2), c("a", "b,c"))
  expect_equal(str_split_one(string = "a.b.c", pattern = stringr::fixed(".")), c("a", "b", "c"))
})

