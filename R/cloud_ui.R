cloud_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "Cloud",
    icon = shiny::icon("cloud"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("A remote git repository?"),
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
            shiny::h1("Git Cloud Plaform: GitHub"),
            shiny::textInput(
              inputId = ns("github_auth_token"),
              label = "Your personal GitHub access token:",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "How to get a token?", 
                    content = "
                      To use GitHub you have to 
                      <a href=\"https://github.com/join\" rel=\"nofollow\">create an account</a>.
                      Then just follow the instructions 
                      <a href=\"https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line\" rel=\"nofollow\">here</a> 
                      on how to create an access token.
                      If you leave this field empty, rrtools checks if there's already
                      an access token in your system.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::selectInput(
              inputId = ns("private_selection"),
              label = "Should your repository be private?",
              choices = c("Yes", "No"),
              selected = "No",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink() %>%
                  bsplus::bs_embed_popover(
                    title = "What's the difference?", 
                    content = "
                      A public repository can be seen (but not edited) by everybody.
                      A private one is only visible for you and the collaborators
                      you select. Having private repositories is a premium feature
                      of GitHub and costs money. But maybe you are eligible for a free
                      <a href=\"https://education.github.com/\" rel=\"nofollow\">educational account</a>? 
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run_github"),
              label = "Connect your local repo with GitHub",
              icon = shiny::icon("arrow-circle-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "use_github"))
        )
      )
    )
  )

}
