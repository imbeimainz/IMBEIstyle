test_that("the report is created", {
  dest_dir <- tempdir()
  expect_invisible(
    create_bioinfo_html("testdoc", report_folder = dest_dir)
  )
})

test_that("the presentation is created", {
  dest_dir <- tempdir()
  expect_invisible(
    create_bioinfo_revealjs("testpresi", presentation_folder = dest_dir)
  )
})
