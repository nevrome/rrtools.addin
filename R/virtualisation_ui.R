virtualisation_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "Virtualisation",
    icon = shiny::icon("desktop"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Virtualization?"),
          shiny::HTML("<p> 
		        Software is constantly changing. Often old code does 
            not run or old data can't be retrieved anymore. 
            Data analysis scripts in R are especially vulnerable to this. 
            Virtualisation software like
            <a href=\"https://www.docker.com/\" rel=\"nofollow\">Docker</a> 
            can store a compendium in a digital time capsule to keep it alive.
		      </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_dockerfile")),
          shiny::HTML("
		        <ol>
              <li>Creating and configuring Dockerfile</li>
              <li>Adding Dockerfile to .Rbuildignore</li>
              <li>Opening Dockerfile</li>
            </ol>
		      ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("Virtualization with Docker"),
            shiny::selectInput(
              inputId = ns("rocker_selection"),
              label = "On which rocker image should this container be based?",
              choices = c("rocker/rstudio", "rocker/tidyverse", "rocker/verse", "rocker/geospatial"),
              selected = "rocker/verse",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's a rocker image?", 
                    content = "
                      A docker container often builds on a preconfigured base image. 
                      This simplifies the setup, because a basic system already exists,
                      which often needs only minor changes to house your project.
                      <a href=\"https://github.com/rocker-org/rocker\" rel=\"nofollow\">rocker</a> 
                      provides great images for R projects. The four you can select here
                      are optimized for reproducibility and  
                      <a href=\"https://github.com/rocker-org/rocker-versioned\" rel=\"nofollow\">prepared for different tasks</a>. 
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run"),
              label = "Add a Dockerfile",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = "virtualisation_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_dockerfile"))
        )
      )
    )
  )

}
