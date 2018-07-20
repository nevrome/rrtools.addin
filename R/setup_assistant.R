#' rrtools Rstudio Addin
#'
#' @export
setup_assistant <- function() {

  ui <- miniUI::miniPage(
    shiny::tags$style(
      shiny::HTML("
        .modal-body {
          height:300px;
          overflow-y:scroll;
        }"
      )
    ),
    miniUI::gadgetTitleBar(
      "rrtools Setup Assistant",
      right = NULL
    ),
    miniUI::miniTabstripPanel(
      miniUI::miniTabPanel(
        shiny::h4("1. Select the parent directory of the new project"),
        shinyFiles::shinyDirButton(
          id = "use_compendium_path",
          label = "Choose directory",
          title = "Directory selection"
        ),
        shiny::h4("2. Set a project name"),
        shiny::textInput(
          inputId = "use_compendium_project_name",
          label = NULL
        ),
        shiny::h4("3. The new project will be created here:"),
        shiny::htmlOutput("use_compendium_path_ready"),
        shiny::h4("The following code will be used to do this:"),
        shiny::htmlOutput("use_compendium_call"),
        shiny::h4("4. If this is fine you can run the code"),
        shiny::actionButton("run_use_compendium", "Run code"),
        title = "create new compendium"
      ),
      miniUI::miniTabPanel(
        title = "other stuff"
      )
    )
  )

  server <- function(input, output, session) {

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

    output$use_compendium_call <- shiny::renderUI({
      shiny::HTML(paste0(
        "rrtools::use_compendium(<br/>",
        "&nbsp;&nbsp;path = ","<font color=\"red\">", use_compendium_path_ready(), "</font>", ",<br/>",
        "&nbsp;&nbsp;fields = getOption('devtools.desc'),<br/>",
        "&nbsp;&nbsp;rstudio = rstudioapi::isAvailable(),<br/>",
        "&nbsp;&nbsp;open = interactive(),<br/>",
        "&nbsp;&nbsp;quiet = FALSE<br/>",
        ")"
      ))
    })

    shiny::observeEvent(input$run_use_compendium, {
      if (use_compendium_path_ready() != "not yet definded") {
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
        rrtools::use_compendium(path = use_compendium_path_ready())
        shiny::stopApp()
      } else {
        shiny::showNotification("Path not defined.")
      }
    })

    shiny::observeEvent(input$cancel, {
      shiny::stopApp()
    })

  }

  shiny::runGadget(
    ui,
    server,
    viewer = shiny::dialogViewer("rrtools", width = 500, height = 500),
    stopOnCancel = FALSE
  )

}
