setup_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "0. Setup",
    icon = shiny::icon("globe"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("New repo..."),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_compendium")),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = ns("license"), class = "function_interface",
          shiny::h1("Compendium"),
          shinyFiles::shinyDirButton(
            id = "use_compendium_path",
            label = "Select the parent directory of the new project",
            title = "Directory selection"
          ),
          shiny::textInput(
            inputId = "use_compendium_project_name",
            label = "Set a project name",
            width = "100%"
          ),
          shiny::h4("3. The new project will be created here:"),
          shiny::htmlOutput("use_compendium_path_ready"),
          shiny::h4("The following code will be used to do this:"),
          shiny::htmlOutput("use_compendium_call"),
          shiny::actionButton(
            inputId = ns("run_setup"),
            label = "Create new project",
            icon = shiny::icon("arrow-circle-right"),
            width = "100%"
          )
          
        )
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
