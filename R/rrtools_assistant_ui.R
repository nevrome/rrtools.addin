rrtools_assistant_ui <- function() {

  miniUI::miniPage(
    tags$head(
      includeCSS(system.file("style/rrtools_assistant_stylesheet.css", package = "rrtools.addin"))
    ),
    miniUI::gadgetTitleBar(
      "rrtools Configuration Assistant",
      right = NULL
    ),
    miniUI::miniTabstripPanel(
      miniUI::miniTabPanel(
        title = "Overview",
        icon = shiny::icon("question")
      ),
      #### 0. Setup ####
      miniUI::miniTabPanel(
        title = "0. Setup",
        icon = shiny::icon("globe"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("New repo..."),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("rrtools::use_compendium")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# usethis::use_git()")
          )
        )
      ),
      #### 1. License ####
      miniUI::miniTabPanel(
        title = "1. License",
        icon = shiny::icon("handshake-o"),
        shiny::fillRow(
          flex = c(1, 1, 1),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("What is a license and why should I care?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("usethis::use_..._license")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            gui_usethis_use_..._license()
          ),
          shiny::fillCol(
            shiny::div(
              id = "license_help", class = "helpbox",
              shiny::HTML(extract_help_as_html("usethis", "licenses"))
            )
          )
        )
      ),
      #### 2. Versioning ####
      miniUI::miniTabPanel(
        title = "2. Versioning",
        icon = shiny::icon("code-fork"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("Version Control with git?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("usethis::use_git")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# usethis::use_git()")
          )
        )
      ),
      #### 3. Cloud ####
      miniUI::miniTabPanel(
        title = "3. Cloud",
        icon = shiny::icon("cloud"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("A remote git repository?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("usethis::use_github")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# usethis::use_github()")
          )
        )
      ),
      #### 4. Readme ####
      miniUI::miniTabPanel(
        title = "4. Readme",
        icon = shiny::icon("file-text"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("A nice README?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("rrtools::use_readme_rmd")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# rrtools::use_readme_rmd()")
          )
        )
      ),
      #### 5. File structure ####
      miniUI::miniTabPanel(
        title = "5. File structure",
        icon = shiny::icon("folder"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("Bringing order into my files?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("rrtools::use_analysis")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# rrtools::use_analysis()")
          )
        )
      ),
      #### 6. Virtualisation ####
      miniUI::miniTabPanel(
        title = "6. Virtualisation",
        icon = shiny::icon("desktop"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("Virtualization with docker?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("rrtools::use_dockerfile")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# rrtools::use_dockerfile()")
          )
        )
      ),
      #### 7. CI/CD ####
      miniUI::miniTabPanel(
        title = "7. CI/CD",
        icon = shiny::icon("industry"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("Continous Integration?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("rrtools::use_travis")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# rrtools::use_travis()")
          )
        )
      ),
      #### 8. Tests ####
      miniUI::miniTabPanel(
        title = "8. Tests",
        icon = shiny::icon("bolt"),
        shiny::fillRow(
          flex = c(1, 2),
          shiny::fillCol(
            shiny::div(class = "explainbox",
                       h4("Automatic tests?"),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            ),
            shiny::div(class = "explainbox",
                       h4("The function", strong("usethis::use_testthat")),
                       p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
            )
          ),
          shiny::fillCol(
            shiny::HTML("# usethis::use_testthat()")
          )
        )
      )
    )
  )

}
