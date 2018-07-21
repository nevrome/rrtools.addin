license_ui <- function() {

	miniUI::miniTabPanel(
    title = "1. License",
    icon = shiny::icon("handshake-o"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(class = "explainbox",
                   shiny::h4("What is a license and why should I care?"),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(class = "explainbox",
                   shiny::h4("The function", shiny::strong("usethis::use_..._license")),
                   shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        gui_usethis_use_..._license()
      ),
      shiny::fillCol(
        shiny::div(
          id = "license_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "licenses"))
        )
      )
    )
  )

}
