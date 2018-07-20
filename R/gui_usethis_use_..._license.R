gui_usethis_use_..._license <- function() {
  shiny::div(
    id = "license", class = "function_interface",
    shiny::h1("License"),
    shiny::checkboxInput(
      inputId = "license_use",
      label = "Do you want to create a license?",
      value = FALSE
    ),
    shiny::selectInput(
      inputId = "license_selection",
      label = "Which License do you want?",
      choices = c("mit", "gpl3", "apl2", "cc0"),
      selected = "mit"
    ),
    shiny::textInput(
      inputId = "license_names",
      label = "What's the name of the copyright holder? Separate multiple individuals with ;."
    )
  )
}
