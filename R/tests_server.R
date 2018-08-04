tests_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run, {
    
    rstudioapi::sendToConsole("usethis::use_testthat()")
    
    shiny::stopApp()
    
  })
  
}
