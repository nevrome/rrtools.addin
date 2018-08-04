file_structure_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run, {
    
    location_param <- switch(
      input$location_selection,
      `top-level directory` = "top_level",
      `inst/ directory` = "inst",
      `vignettes/ directory` = "vignettes"
    )
    
    template_param <- switch(
      input$template_selection,
      paper.Rmd = "paper.Rmd"
    )
  
    data_in_git_param <- switch(
      input$data_in_git_selection,
      Yes = TRUE,
      No = FALSE
    )
    
    rstudioapi::sendToConsole(
      paste0(
        "rrtools::use_analysis(",
        "location = ", "\"", location_param, "\"", ", ",
        "template = ", "\"", template_param, "\"", ", ",
        "data_in_git = ", data_in_git_param, 
        ")"
      )
    )
    
    shiny::stopApp()
    
  })
  
}
