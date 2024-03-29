ci_cd_ui <- function(id) {

  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "CI",
    icon = shiny::icon("industry"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Continous integration?"),
          shiny::HTML("<p> 
            CI is a concept of software development that
            comprises powerful ideas like the automation of building, 
            testing and deploying. 
            For a compendium with complex code this can be useful, 
            but also other projects can profit from automatic text rendering 
            on platforms like
            <a href=\"https://travis-ci.org/\" rel=\"nofollow\">Travis CI</a>.
		      </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_travis")),
          shiny::HTML("
		        <ol>
              <li>Creates .travis.yml file</li>
              <li>Opens browser to activate travis for your project</li>
            </ol>
		      ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h3("Continous integration with Travis CI"),
            shiny::selectInput(
              inputId = ns("docker_selection"),
              label = "With Docker?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink("circle-info") %>%
                  bsplus::bs_embed_popover(
                    title = "With or without Docker?", 
                    content = "
                      If you don't use Docker, you'll get a vanilla travis config that builds, 
                      installs and runs your compendium as an R package on travis. 
                      The other type of configuration directs travis to build the Docker container (according 
                      to the instructions in your Dockerfile) and push the successful result to 
                      <a href=\"https://hub.docker.com/\" rel=\"nofollow\">Docker Hub</a>.
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
            ),
            shiny::br(), shiny::br(),
            shiny::HTML("<p>
              rrtools offers a similar function for Circle CI: <code>rrtools::use_circleci()</code>. 
              Check it out if Travis CI does not fit your needs.
            </p>")
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
