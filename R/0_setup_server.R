setup_server <- function(input, output, session) {
  
    shinyFiles::shinyDirChoose(input, 'use_compendium_path', roots = c(home = "~"))
    
    use_compendium_path_ready <- shiny::reactive({
      home <- normalizePath("~")
      if(length(input$use_compendium_path) == 1) {
        path <- "not yet definded"
      } else {
        path <- file.path(
          file.path(
            home, paste(unlist(input$use_compendium_path$path[-1]), collapse = .Platform$file.sep)
          ),
          input$use_compendium_project_name
        )
      }
      return(path)
    })
    
    output$use_compendium_path_ready <- shiny::renderUI({
      shiny::HTML("<font color=\"red\">", use_compendium_path_ready(), "</font>")
    })
    
    shiny::observeEvent(input$run_use_compendium, {
      if (use_compendium_path_ready() != "not yet definded") {
        # welcome message in new repo -- should be part of rrtools
        dir.create(use_compendium_path_ready())
        fileConn <- file(file.path(use_compendium_path_ready(), ".Rprofile"))
        writeLines(
          c(
            "message('This project is set up by rrtools.')",
            "message('You can start working now or apply some more basic configuration.')",
            "message('Check out https://github.com/benmarwick/rrtools for an explanation of all the project configuration functions of rrtools.')",
            "message('Or just run the rrtools configuration addin: \"rrtools::config_assistant()\"')",
            "invisible(file.remove('.Rprofile'))"
          ),
          fileConn
        )
        close(fileConn)
        # run use_compendium and close app
        rstudioapi::sendToConsole(
          paste0(
            "rrtools::use_compendium(", 
              "path = \"", use_compendium_path_ready(), "\"",
            ")"
          )
        )
        shiny::stopApp()
      } else {
        shiny::showNotification("Path not defined.")
      }
    })

}
