#' this is the filter function
#'
#' @param team this is the team name to filter by
#'
#' @return This returns a tibble for a data set for the specified team.
#'
#' @examples
#' team_function('Southern Utah')
#'
#'
#' @export

team_function <- function(team) {
  filter(cbbga24, Team1==team | Team2==team)
}


