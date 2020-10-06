setup_server <- function(input, output, session) {
  
  osSystem <- Sys.info()["sysname"]
  if (osSystem == "Linux") {
    def_roots <- c(home = "~")
  } else {
    def_roots <- shinyFiles::getVolumes()()
  }
  
  shinyFiles::shinyDirChoose(input, 'use_compendium_path', roots = def_roots)  
  
  use_compendium_path_ready <- shiny::reactive({
    if(length(input$use_compendium_path) == 1) {
      path <- "not yet definded"
    } else {
      path <- file.path(
        shinyFiles::parseDirPath(def_roots, input$use_compendium_path)
      )
    }
    return(path)
  })
  
  output$use_compendium_path_ready <- shiny::renderUI({
    shiny::HTML("<font color=\"red\">", use_compendium_path_ready(), "</font>")
  })
  
  shiny::observeEvent(input$run_use_compendium, {
    if (use_compendium_path_ready() != "not yet definded") {
      # prepare decisions
      rstudio_param <- switch(
        input$rstudio_selection,
        Yes = TRUE,
        No = FALSE
      )
      open_param <- switch(
        input$open_selection,
        Yes = TRUE,
        No = FALSE
      )
      # run use_compendium and close app
      rstudioapi::sendToConsole(
        paste0(
          "rrtools::use_compendium(", 
            "path = \"", use_compendium_path_ready(), "\",",
            "rstudio = ", rstudio_param, ",",
            "open = ", open_param,
          ")"
        )
      )
      shiny::stopApp()
    } else {
      shiny::showNotification("Path not defined.")
    }
  })

}
