readme_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
		title = "Readme",
		icon = shiny::icon("file-text"),
		shiny::fillRow(
		  flex = c(1, 1, 1),
		  shiny::fillCol(
		    shiny::div(
		      class = "explainbox_1",
		      shiny::h4("A nice R1ADME?"),
		      shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
		    ),
		    shiny::div(
		      class = "explainbox_2",
		      shiny::h4("The function", shiny::strong("rrtools::use_readme_rmd")),
		      shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
		    )
		  ),
		  shiny::fillCol(
		    shiny::div(
		      class = "function_interface_outer",
		      shiny::div(
		        class = "function_interface_inner",
		        shiny::h1("README.rmd and README.md"),
		        shiny::actionButton(
		          inputId = ns("run_readme"),
		          label = "Add a README file to your project",
		          icon = shiny::icon("arrow-circle-right"),
		          width = "100%"
		        )
		      )
		    )
		  ),
		  shiny::fillCol(
		    shiny::div(
		      id = "readme_help", class = "helpbox",
		      shiny::HTML(extract_help_as_html("usethis", "use_readme_rmd"))
		    )
		  )
		)
	)

}
