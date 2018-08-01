cloud_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run_github, {
    
    private_param <- switch(
      input$private_selection,
      Yes = TRUE,
      No = FALSE
    )
    
    rstudioapi::sendToConsole(
      paste0(
        "rrtools::use_github(", 
        "auth_token = \"", input$github_auth_token, "\",",
        "private = ", private_param, ",",
        ")"
      )
    )
    
    shiny::stopApp()
    
  })
  
}
