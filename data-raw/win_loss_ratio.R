## code to prepare `win_loss_ratio` dataset goes here

install.packages("usethis")


win_loss_ratio <- read.csv("C:/Users/elisw/Downloads/SUU/Math_3190/cbb24/data-raw/win_loss_ratio")
usethis::use_data(win_loss_ratio, overwrite = TRUE)


