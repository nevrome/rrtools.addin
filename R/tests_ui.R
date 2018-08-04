tests_ui <- function(id) {
 	
  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "Tests",
    icon = shiny::icon("bolt"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Automatic tests?"),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_testthat")),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_testthat()")
      ),
      shiny::fillCol(
        shiny::div(
          id = "tests_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "use_testthat"))
        )
      )
    )
  )	

}
