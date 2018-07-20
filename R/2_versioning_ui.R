versioning_ui <- function() {

	miniUI::miniTabPanel(
    title = "2. Versioning",
    icon = shiny::icon("code-fork"),
    shiny::fillRow(
      flex = c(1, 2),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("Version Control with git?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("usethis::use_git")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_git()")
      )
    )
  )

}
