rrtools_assistant_ui <- function() {

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
      license_ui(),
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
