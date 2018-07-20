tests_ui <- function() {
 	
	miniUI::miniTabPanel(
    title = "8. Tests",
    icon = shiny::icon("bolt"),
    shiny::fillRow(
      flex = c(1, 2),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("Automatic tests?"),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("usethis::use_testthat")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_testthat()")
      )
    )
  )	

}
