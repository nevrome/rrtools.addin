tests_ui <- function(id) {
 	
  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "Tests",
    icon = shiny::icon("bolt"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Software tests?"),
          shiny::HTML("<p> 
		        If the code in a compendium gets more complex, 
            it becomes more difficult to estimate the consequences of changes. 
            Therefore code should be modular and automatically tested. 
            In an R package
            <a href=\"http://r-pkgs.had.co.nz/tests.html\" rel=\"nofollow\">testing</a>  
            can be managed with the 
            <a href=\"http://testthat.r-lib.org/\" rel=\"nofollow\">testthat</a>  
            package.
		      </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_testthat")),
          shiny::HTML("
		        <ol>
              <li>Creates tests/testhat directory</li>
              <li>Creates tests/testthat.R configuration file</li>
            </ol>
		      ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h3("Automatic tests with testthat"),
            shiny::actionButton(
              inputId = ns("run"),
              label = "Create testthat environment",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          id = "tests_help", class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "use_testthat"))
        )
      )
    )
  )	

}
