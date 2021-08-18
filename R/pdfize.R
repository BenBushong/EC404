#!/usr/bin/env Rscript

# Convert xaringan HTML slides to PDF with pagedown::chrome_print()
#
# This used to be part of build.R and would run every time I used
# blogdown::build_site(), but rebuilding PDFs needlessly got tedious and took
# *forever*, so now I use a Makefile target to determine if slide PDFs need to
# be rebuilt

pdfize <- function(slide_name) {
  pagedown::chrome_print(slide_name,
                         output = here::here(paste0(slide_name, ".pdf")),
                         options = list(printBackground = TRUE),
                         wait = 10, timeout = 600)
}
