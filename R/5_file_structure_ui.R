file_structure_ui <- function() {

  miniUI::miniTabPanel(
    title = "5. File structure",
    icon = shiny::icon("folder"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   shiny::h4("Bringing order into my files?"),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   shiny::h4("The function", shiny::strong("rrtools::use_analysis")),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# rrtools::use_analysis()")
      ),
      shiny::fillCol(
        shiny::div(
          id = "file_structure_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_analysis"))
        )
      )
    )
  )

}
