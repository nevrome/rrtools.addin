setup_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "Setup",
    icon = shiny::icon("globe"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("A new project!"),
          shiny::HTML("<p> 
            Each reproducible research project lives in an own directory on your computer.
            This directory needs some special files and subfolders to work as an
            <a href=\"http://r-pkgs.had.co.nz/package.html\" rel=\"nofollow\">R package</a>.
            The first step in the creation of a research compendium is to create and
            configure all of this.
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_compendium")),
          shiny::HTML("
            <ol>
              <li>Creating project directory</li>
              <li>Creating R package directories</li>
              <li>Writing and Preconfiguring R package files</li>
              <li>Opening project in RStudio</li>
            </ol>
          ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("Create a research compendium"),
            shiny::strong("Select the parent directory of the new project:"),
            shinyFiles::shinyDirButton(
              id = ns("use_compendium_path"),
              label = "Choose directory",
              title = "Directory selection"
            ),
            shiny::textInput(
              inputId = ns("use_compendium_project_name"),
              label = "Set a project name:",
              width = "100%"
            ),
            shiny::strong("The new project will be created here:"),
            shiny::htmlOutput(ns("use_compendium_path_ready")),
            shiny::selectInput(
              inputId = ns("rstudio_selection"),
              label = "Should an RStudio project file be created?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "100%"
            ),
            shiny::selectInput(
              inputId = ns("open_selection"),
              label = "Should a new RStudio Session be started directly?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "100%"
            ),
            shiny::actionButton(
              inputId = ns("run_use_compendium"),
              label = "Create new project",
              icon = shiny::icon("arrow-circle-right"),
              width = "100%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_compendium"))
        )
      )
    )
  )
  
}
