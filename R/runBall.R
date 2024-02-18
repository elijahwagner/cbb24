#' Ball App
#' 
#' This function allow us to call the ball app. It will give an option to write
#' in a college basketball team and it will display a table with win, loss, 
#' and win/loss ratio, as well as a bar graph depicting the score differences.
#' 
#' @export

runball <- function() {
  appDir <- system.file("shiny", "ball_app", package = "cbb24")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `mypackage`.", 
         call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}
