#' This is my box plot function
#'
#' @param team this is the college team name
#'
#' @return This function returns a boxplot of the score differences for the 
#' specified team
#'
#' @examples
#' plot_score_difference_box("Southern Utah")
#'
#' @export

plot_score_difference_box <- function(team) {
  data <- team_function(team)
  ggplot(data, aes(x = Score_Difference)) +
    geom_boxplot(fill = "skyblue", color = "black") +
    labs(x = "Score Difference", y = "Frequency", title = "Distribution of Score Differences") +
    coord_flip()
}
