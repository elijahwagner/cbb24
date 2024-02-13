#'This is the team results function 
#'
#' @param team this is the college basketball team specified
#'
#' @return This function reports the number wins, losses, and win/loss ratio
#' as a tibble.
#'
#' @examples
#' team_results('Southern Utah')
#'
#'
#' @export

team_results <- function(team) {
  team_result <- team_function(team) |> 
    mutate(Result = case_when(Team1==team & Score_Difference > 0 ~ 'win',
                              Team2==team & Score_Difference < 0 ~ 'win',
                              Score_Difference==0 ~'tie',
                              TRUE ~ 'loss')) |> 
    select(Result)
  team_result |>
    summarize(win = sum(Result == 'win'),
              loss = sum(Result == 'loss'),
              win_ratio = mean(Result == 'win')) |>
    mutate(team = team) |>
    select(team,everything())
}
