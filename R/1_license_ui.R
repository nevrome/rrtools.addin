license_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "1. License",
    icon = shiny::icon("handshake-o"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("What is a license and why should I care?"),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_..._license")),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = ns("license_outer"), class = "function_interface_outer",
          shiny::div(
            id = ns("license_inner"), class = "function_interface_inner",
            shiny::h1("License"),
            shiny::selectInput(
              inputId = ns("license_selection"),
              label = "Which License do you want?",
              choices = c("CC0", "MIT", "Apache_v2", "GPL_v3"),
              selected = "MIT",
              width = "100%"
            ),
            shiny::textInput(
              inputId = ns("license_names"),
              label = "What's the name of the copyright holder? Separate multiple individuals with ;.",
              width = "100%"
            ),
            shiny::actionButton(
              inputId = ns("run_license"),
              label = "Enable license",
              icon = shiny::icon("arrow-circle-right"),
              width = "100%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = ns("license_help"), class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "licenses"))
        )
      )
    )
  )

}
