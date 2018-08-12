ci_cd_ui <- function(id) {

  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "CI/CD",
    icon = shiny::icon("industry"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Continous integration?"),
          shiny::HTML("<p> 
		        Especially if you share your work on cloud version control platforms
            like Github the README file is the 
            <a href=\"https://help.github.com/articles/about-readmes/\" rel=\"nofollow\">face of your project</a>
            for everybody who comes across it. It's important to give a good 
            overview about what the project does and how users can get started with it.
		      </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_analysis")),
          shiny::HTML("
		        <ol>
              <li>Creating default README.Rmd</li>
              <li>Rendering README.Rmd to Readme.md</li>
              <li>Creating code of conduct</li>
              <li>Creating instructions to contributors</li>
              <li>Adding additional files to .Rbuildignore</li>
            </ol>
		      ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("Continous integration with Travis CI"),
            shiny::selectInput(
              inputId = ns("docker_selection"),
              label = "With Docker?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "95%"
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
              label = "Add a travis config file",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = "ci_cd_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_travis"))
        )
      )
    )
  )

}
