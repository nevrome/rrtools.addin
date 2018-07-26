#' rrtools RStudio Addin
#' 
#' This addin is a simplified interface to Ben Marwicks's rrtools package.
#' For more documentation please check out the Addin itself and the rrtools
#' README (\url{https://github.com/benmarwick/rrtools}).
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
                  src = "https://s-media-cache-ak0.pinimg.com/originals/c5/67/d4/c567d4b7e23d54fa750baacab934cd1b.jpg",
                  align = "center"
                )
              )
            )
          )
        ),
        # other ui elements
        setup_ui("setup_general"),
        license_ui("license_general"),
        versioning_ui("versioning_general"),
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
    shiny::callModule(setup_server, id = "setup_general")
    shiny::callModule(versioning_server, id = "versioning_general")
    
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
