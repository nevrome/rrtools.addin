readme_ui <- function() {

	miniUI::miniTabPanel(
		title = "4. Readme",
		icon = shiny::icon("file-text"),
		shiny::fillRow(
		  flex = c(1, 1, 1),
		  shiny::fillCol(
		    shiny::div(class = "explainbox",
		               shiny::h4("A nice README?"),
		               shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
		    ),
		    shiny::div(class = "explainbox",
		               shiny::h4("The function", shiny::strong("rrtools::use_readme_rmd")),
		               shiny::p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit duis tristique sollicitudin nibh. Libero id faucibus nisl tincidunt eget. Praesent semper feugiat nibh sed.")
		    )
		  ),
		  shiny::fillCol(
		    shiny::HTML("# rrtools::use_readme_rmd()")
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
