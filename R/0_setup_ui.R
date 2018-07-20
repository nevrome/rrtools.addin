setup_ui <- function() {
  
  miniUI::miniTabPanel(
    title = "0. Setup",
    icon = shiny::icon("globe"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   h4("New repo..."),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   h4("The function", strong("rrtools::use_compendium")),
                   p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::HTML("# usethis::use_git()")
      ),
      shiny::fillCol(
        shiny::div(
          id = "setup_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_compendium"))
        )
      )
    )
  )
  
}
