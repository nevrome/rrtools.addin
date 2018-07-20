virtualisation_ui <- function() {

	miniUI::miniTabPanel(
    title = "6. Virtualisation",
    icon = shiny::icon("desktop"),
    shiny::fillRow(
      flex = c(1, 2),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("Virtualization with docker?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("rrtools::use_dockerfile")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# rrtools::use_dockerfile()")
      )
    )
  )

}
