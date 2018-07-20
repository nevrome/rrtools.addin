#' rrtools Rstudio Addin 2
#'
#' @export
config_assistant <- function() {

  ui <- miniUI::miniPage(
    shiny::tags$style(
      shiny::HTML("
        .modal-body {
          height:300px;
          overflow-y:scroll;
        }
        .explainbox {
          position: relative;
          height: 170px;
          background: #f2f2f2;
          border-radius: 15px;
          padding: 15px;
          margin-top: 10px;
          margin-bottom: 0px;
          margin-right: 10px;
          margin-left: 10px;
        }
        .function_interface {
          overflow-y: auto;
          height: 360px;
          position: relative;
        }
        .helpbox {
          overflow-y: auto;
          height: 360px;
          position: relative;
          background: #f2f2f2;
          border-radius: 15px;
          padding: 15px;
          margin-top: 10px;
          margin-bottom: 0px;
          margin-right: 10px;
          margin-left: 10px;
        }
      "
      )
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> New repo... </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>rrtools::use_compendium</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> What is a license and why should I care? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>usethis::use_..._license()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            )
          ),
          shiny::fillCol(
            rrtools.addin::gui_usethis_use_..._license()
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> Version Control with git? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>usethis::use_git()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> A remote git repository? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>usethis::use_github()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> A nice README? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>rrtools::use_readme_rmd()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> Bringing order into my files? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>rrtools::use_analysis()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> Virtualization with docker? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>rrtools::use_dockerfile()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> Continous Integration? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>rrtools::use_travis()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
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
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> Automatic tests? </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            ),
            shiny::HTML("
              <div class=\"explainbox\">
                <h4> The function <b>usethis::use_testthat()</b> </h4>
                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed. </p>
              </div>
            "
            )
          ),
          shiny::fillCol(
            shiny::HTML("# usethis::use_testthat()")
          )
        )
      )
    )
  )

  server <- function(input, output, session) {

    shiny::observeEvent(input$cancel, {
      shiny::stopApp()
    })

  }

  shiny::runGadget(
    ui,
    server,
    viewer = shiny::dialogViewer("rrtools", width = 1200, height = 500),
    stopOnCancel = FALSE
  )

}
