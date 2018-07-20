cloud_ui <- function() {

	miniUI::miniTabPanel(
    title = "3. Cloud",
    icon = shiny::icon("cloud"),
    shiny::fillRow(
      flex = c(1, 2),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("A remote git repository?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("usethis::use_github")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_github()")
      )
    )
  )

}
