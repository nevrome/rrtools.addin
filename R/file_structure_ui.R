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
          shiny::h4("Writing a paper in R?"),
          shiny::HTML("<p> 
		        The most important part of a research compendium is the actual analysis document. 
            There are powerful tools for text production in R and the 
            <a href=\"https://bookdown.org/\" rel=\"nofollow\">bookdown framework</a>
            combines them to provide a writing environment, 
            that still can produce output in PDF, HTML and even Word.
		      </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_analysis")),
          shiny::HTML("
		        <ol>
              <li>Adding bookdown to Imports</li>
              <li>Creating analysis/ directory with a lot of templates to create a research working environment</li>
            </ol>
		      ")
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
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What are the options?", 
                    content = "
                      The default is to create a top-level 'analysis' directory. 
                      Other options are to write to the 'inst' directory, so that all the contents 
                      will be included in the installed package) and 'vignettes' (as in a regular 
                      package vignette).
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
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's a template?", 
                    content = "
                      The template is a default .Rmd file where everything is configured to just work.
                      You can start writing and figure out the details later. 
                      At the moment there's just one template: 'paper.Rmd'. It's set up to knit to MS Word 
                      using bookdown.
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
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "Why not?", 
                    content = "
                      In some cases it can be useful to prevent Git from logging your data directory.
                      You should select 'No', if you want to share your compendium on a Git cloud 
                      platform like Github, but not the data, because it's not allowed for publishing
                      or too big (> some hundred megabytes). In the latter case you could upload your data 
                      to a (scientific) file hosting provider like for example
                      <a href=\"https://figshare.com//\" rel=\"nofollow\">fighshare</a>.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run"),
              label = "Create the analysis directory",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
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
