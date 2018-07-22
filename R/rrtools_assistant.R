#' rrtools Rstudio Addin 2
#'
#' @export
rrtools_assistant <- function() {

  ui <- rrtools_assistant_ui()

  server <- function(input, output, session) {

    shiny::callModule(license_server, id = "license_general")
    
    shiny::observeEvent(input$cancel, {
      shiny::stopApp()
    })

  }

  shiny::runGadget(
    ui,
    server,
    viewer = shiny::dialogViewer("rrtools", width = 1200, height = 500),
    stopOnCancel = FALSE
  )

}
