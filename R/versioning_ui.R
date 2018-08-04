versioning_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "Versioning",
    icon = shiny::icon("code-fork"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("Version Control with git?"),
          shiny::HTML("<p> 
            Research is an incremental process. You create a hypothesis, test it, keep it or abandon it.
            Truly reproducible work should try to keep track. Version control software like 
            <a href=\"https://git-scm.com\" rel=\"nofollow\">Git</a> is the best way to do this.
            If you want to use it, you'll have to take 
            <a href=\"https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html#learngit\" rel=\"nofollow\">a deeper look</a>.
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_git")),
          shiny::HTML("
            <ol>
              <li>Initialising directory as Git repository</li>
              <li>Configuring .gitignore file to work with R</li>
              <li>Making an initial commit that contains the current files</li>
              <li>Asking for restart of RStudio</li>
            </ol>
          ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h1("Version Control"),
            shiny::actionButton(
              inputId = ns("run_git"),
              label = "Initialise your project as git repository",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "use_git"))
        )
      )
    )
  )

}
