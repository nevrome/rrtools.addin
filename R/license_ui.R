license_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "License",
    icon = shiny::icon("handshake-o"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("What is a license and why should I care?"),
          shiny::HTML("<p> 
            A research compendium usually contains code and data. If you provide your intellectual property
            in an open and reproducible form, you have to assume that others will use it for their purposes.
            To codify what kind of things they are allowed to do you need a 
            <a href=\"https://choosealicense.com\" rel=\"nofollow\">project license</a>. 
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_..._license")),
          shiny::HTML("
            <ol>
              <li>Configuring DESCRIPTION file to include new License</li>
              <li>Writing License files</li>
              <li>Configuring R package files to ignore License files</li>
            </ol>
          ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("License"),
            shiny::selectInput(
              inputId = ns("license_selection"),
              label = "Which License do you want?",
              choices = c("CC0", "MIT", "Apache_v2", "GPL_v3"),
              selected = "MIT",
              width = "95%"
            ),
            shiny::textInput(
              inputId = ns("license_names"),
              label = "What's the name of the copyright holder? Separate multiple individuals with ;.",
              width = "95%"
            ),
            shiny::actionButton(
              inputId = ns("run_license"),
              label = "Enable license",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "licenses"))
        )
      )
    )
  )

}
