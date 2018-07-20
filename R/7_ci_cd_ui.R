ci_cd_ui <- function() {

  miniUI::miniTabPanel(
    title = "7. CI/CD",
    icon = shiny::icon("industry"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("Continous Integration?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("rrtools::use_travis")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# rrtools::use_travis()")
      ),
      shiny::fillCol(
        shiny::div(
          id = "ci_cd_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_travis"))
        )
      )
    )
  )

}
