#' This is my score difference histogram function
#'
#' @param team this is the college team name
#'
#'
#' @return This function returns a histogram of the score difference.
#'
#' @examples
#' plot_score_difference("Southern Utah")
#'
#' @export

plot_score_difference <- function(team) {
  data <- team_function(team)
  ggplot(data, aes(x = Score_Difference)) +
    geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
    labs(x = "Score Difference", y = "Frequency", title = "Distribution of Score Differences")
}
