#' rrtools Rstudio Addin 2
#'
#' @export
rrtools_assistant <- function() {

  #### ui ####
  ui <- function() {
    miniUI::miniPage(
      shiny::tags$head(
        shiny::includeCSS(system.file("style/rrtools_assistant_stylesheet.css", package = "rrtools.addin"))
      ),
      miniUI::gadgetTitleBar(
        "rrtools Configuration Assistant",
        right = NULL
      ),
      # overview page
      miniUI::miniTabstripPanel(
        miniUI::miniTabPanel(
          title = "Overview",
          icon = shiny::icon("question"),
          shiny::fillRow(
            flex = c(1, 2),
            shiny::fillCol(
              shiny::div(
                class = "helpbox",
                shiny::h4("What's this addin about"),
                shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
              )
            ),
            shiny::fillCol(
              shiny::div(
                class = "imagebox",
                shiny::img(
                  src = "https://i.pinimg.com/originals/39/a3/d5/39a3d528f9c54ad894d1a027bf69e43d.jpg"),
                  align = "center"
              )
            )
          )
        ),
        # other ui elements
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

  #### server ####
  server <- function(input, output, session) {

    shiny::callModule(license_server, id = "license_general")
    
    shiny::observeEvent(input$cancel, {
      shiny::stopApp()
    })

  }

  #### run app ####
  shiny::runGadget(
    ui,
    server,
    viewer = shiny::dialogViewer("rrtools", width = 1200, height = 500),
    stopOnCancel = FALSE
  )

}
