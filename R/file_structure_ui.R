file_structure_ui <- function(id) {

  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "File structure",
    icon = shiny::icon("folder"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Bringing order into my files?"),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_analysis")),
          shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("Analysis directory"),
            shiny::selectInput(
              inputId = ns("location_selection"),
              label = "Where should the analysis directory be created?",
              choices = c("top-level directory", "inst/ directory", "vignettes/ directory"),
              selected = "top-level directory",
              width = "100%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's the difference?", 
                    content = "
                      test
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::selectInput(
              inputId = ns("template_selection"),
              label = "Which template should be used for the creation of the main analysis document?",
              choices = c("paper.Rmd"),
              selected = "paper.Rmd",
              width = "100%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's the difference?", 
                    content = "
                      test
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::selectInput(
              inputId = ns("data_in_git_selection"),
              label = "Should git track the files in the data directory?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "100%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's the difference?", 
                    content = "
                      test
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run"),
              label = "Create the analysis directory",
              icon = shiny::icon("arrow-circle-right"),
              width = "100%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = "file_structure_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_analysis"))
        )
      )
    )
  )

}
