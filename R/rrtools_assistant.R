#' rrtools Rstudio Addin 2
#'
#' @export
rrtools_assistant <- function() {

  ui <- function() {
    miniUI::miniPage(
      shiny::tags$head(
        shiny::includeCSS(system.file("style/rrtools_assistant_stylesheet.css", package = "rrtools.addin"))
      ),
      miniUI::gadgetTitleBar(
        "rrtools Configuration Assistant",
        right = NULL
      ),
      miniUI::miniTabstripPanel(
        miniUI::miniTabPanel(
          title = "Overview",
          icon = shiny::icon("question")
        ),
        setup_ui(),
        license_ui("license_general"),
        versioning_ui(),
        cloud_ui(),
        readme_ui(),
        file_structure_ui(),
        virtualisation_ui(),
        ci_cd_ui(),
        tests_ui()
      )
    )
  }

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
