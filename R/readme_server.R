readme_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run_readme, {
    
    rstudioapi::sendToConsole("rrtools::use_readme_rmd()")
    
    shiny::stopApp()
    
  })
  
}
