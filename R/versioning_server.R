versioning_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run_git, {
    
    rstudioapi::sendToConsole("usethis::use_git()")
    
    shiny::stopApp()
    
  })
  
}
