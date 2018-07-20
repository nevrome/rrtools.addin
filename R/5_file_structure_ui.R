file_structure_ui <- function() {

  miniUI::miniTabPanel(
    title = "5. File structure",
    icon = shiny::icon("folder"),
    shiny::fillRow(
      flex = c(1, 2),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("Bringing order into my files?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("rrtools::use_analysis")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# rrtools::use_analysis()")
      )
    )
  )

}
