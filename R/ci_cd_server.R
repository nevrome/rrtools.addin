ci_cd_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run, {
    
    docker_param <- switch(
      input$docker_selection,
      Yes = TRUE,
      No = FALSE
    )
    
    rstudioapi::sendToConsole(
      paste0(
        "rrtools::use_travis(",
        "docker = ", docker_param,
        ")"
      )
    )
    
    shiny::stopApp()
    
  })
  
}
