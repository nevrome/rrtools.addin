virtualisation_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run, {
    
    rocker_param <- switch(
      input$rocker_selection,
      `rocker/rstudio` = "rstudio",
      `rocker/tidyverse` = "tidyverse",
      `rocker/verse` = "verse",
      `rocker/geospatial` = "geospatial"
    )
    
    rstudioapi::sendToConsole(
      paste0(
        "rrtools::use_dockerfile(",
        "rocker = ", "\"", rocker_param, "\"",
        ")"
      )
    )
    
    shiny::stopApp()
    
  })
  
}
