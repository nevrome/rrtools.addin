ci_cd_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run_test, {
    
    rstudioapi::sendToConsole("")
    
    shiny::stopApp()
    
  })
  
}
