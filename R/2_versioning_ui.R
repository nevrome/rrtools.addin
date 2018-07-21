versioning_ui <- function() {

	miniUI::miniTabPanel(
    title = "2. Versioning",
    icon = shiny::icon("code-fork"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   shiny::h4("Version Control with git?"),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   shiny::h4("The function", shiny::strong("usethis::use_git")),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_git()")
      ),
      shiny::fillCol(
        shiny::div(
          id = "versioning_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "use_git"))
        )
      )
    )
  )

}
