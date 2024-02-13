## code to prepare `cbbga24` dataset goes here

install.packages("usethis")


cbbga24 <- read.csv("C:/Users/elisw/Downloads/SUU/Math_3190/cbb24/data-raw/cbbga24")
usethis::use_data(cbbga24, overwrite = TRUE)


