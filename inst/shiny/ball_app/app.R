ui <- fluidPage(
  titlePanel(div("2023 College Basketball Information")
  ),
  textInput(inputId = "team",
            label = "Type Team Name"),
  conditionalPanel(
    condition = "output.valid_name==TRUE",
    mainPanel(
      tableOutput('table'),
      br(),
      textOutput('team_name'),
      plotOutput('plot')
    )
  )
)

server <- function(input, output) {
  team_names <- sort(win_loss_ratio[['team']])
  valid_name <- reactive({input$team %in% team_names})
  
  output$valid_name <- reactive({valid_name()})
  
  output$team_name <- renderText(
    if (!valid_name()) {
      return(team_names)
    } else {NULL})
  
  
  output$table <- renderUI({
    data <- team_results(input$team)
    if (!valid_name()) {
      return("Please Select Valid Team Name!")
    } else {
      table <- knitr::kable(data, format = "html", align = "c", caption = "Team Statistics")
      HTML(table)
    }
  })
  output$plot <- renderPlot({
    if(valid_name()){
      plot_score_difference(input$team)
    } else {NULL}
  })
}

shinyApp(ui = ui, server = server)