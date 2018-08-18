#' rrtools RStudio Addin
#' 
#' This addin is a simplified interface to Ben Marwicks's rrtools package.
#' For more documentation please check out the Addin itself and the rrtools
#' README (\url{https://github.com/benmarwick/rrtools}).
#'
#' @param startpanel Character. Which page should be selected when the app is started? Default: "Overview".
#'
#' @importFrom magrittr %>%
#'
#' @export
rrtools_assistant <- function(
  startpanel = "Overview"
) {
  
  shiny::addResourcePath("image", system.file("image", package = "rrtools.addin"))
  
  #### ui ####
  ui <- function() {
    miniUI::miniPage(
      shiny::tags$head(
        shiny::includeCSS(system.file("style/rrtools_assistant_stylesheet.css", package = "rrtools.addin")),
        # activate bs popovers
        bsplus::use_bs_popover()
      ),
      miniUI::gadgetTitleBar(
        "rrtools Configuration Assistant",
        left = miniUI::miniTitleBarButton("help_button", "Ask for help or report a bug"),
        right = miniUI::miniTitleBarCancelButton()
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
                class = "overviewpagebox",
                shiny::h4("What is this about?"),
                shiny::HTML("
                  <p> This RStudio Addin is a graphical interface to Ben Marwick's 
                  <a href=\"https://github.com/benmarwick/rrtools\" rel=\"nofollow\">rrtools package</a>. 
                  rrtools provides instructions, templates, and functions for making a basic compendium 
                  suitable for writing reproducible research with R. </p>
                "),
                shiny::HTML("
                  <p> The approach is based generally on 
                  <a href=\"https://www.practicereproducibleresearch.org\" rel=\"nofollow\">Kitzes et al. (2017)</a>, 
                  and more specifically on 
                  <a href=\"https://doi.org/10.1007/s10816-015-9272-9\" rel=\"nofollow\">Marwick (2017)</a>, 
                  <a href=\"https://doi.org/10.7287/peerj.preprints.3192v1\" rel=\"nofollow\">Marwick et al. (2017)</a>, and 
                  <a href=\"https://docs.google.com/document/d/1LzZKS44y4OEJa4Azg5reGToNAZL0e0HSUwxamNY7E-Y/edit#\" rel=\"nofollow\">Wickham's (2017)</a> 
                  work using the R package structure as the basis for a research compendium. </p>
                "),
                shiny::HTML("
                  <p> This Addin allows to use and understand the most important rrtools functions, their context and
                  their main options. </p> 
                ")
              )
            ),
            shiny::fillCol(
              shiny::div(
                class = "imagebox",
                shiny::img(
                  src = "/image/overview.png",
                  align = "center"
                )
              )
            )
          )
        ),
        # submodules
        setup_ui("setup_general"),
        license_ui("license_general"),
        versioning_ui("versioning_general"),
        cloud_ui("cloud_general"),
        readme_ui("readme_general"),
        file_structure_ui("file_structure_general"),
        virtualisation_ui("virtualisation_general"),
        ci_cd_ui("ci_cd_general"),
        tests_ui("tests_general"),
        # options for miniTabstripPanel
        selected = startpanel
      )
    )
  }

  #### server ####
  server <- function(input, output, session) {

    # submodules
    shiny::callModule(license_server, id = "license_general")
    shiny::callModule(setup_server, id = "setup_general")
    shiny::callModule(versioning_server, id = "versioning_general")
    shiny::callModule(cloud_server, id = "cloud_general")
    shiny::callModule(readme_server, id = "readme_general")
    shiny::callModule(file_structure_server, id = "file_structure_general")
    shiny::callModule(virtualisation_server, id = "virtualisation_general")
    shiny::callModule(ci_cd_server, id = "ci_cd_general")
    shiny::callModule(tests_server, id = "tests_general")
    
    # help button
    shiny::observeEvent(input$help_button, {
      utils::browseURL("https://github.com/nevrome/rrtools.addin/issues")
    })
    
    # cancel button
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
