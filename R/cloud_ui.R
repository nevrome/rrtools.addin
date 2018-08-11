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
            If you're using Git to track the progress of your work, then you can
            link it to a web platform like
            <a href=\"https://github.com/\" rel=\"nofollow\">Github</a>,
            <a href=\"https://about.gitlab.com/\" rel=\"nofollow\">GitLab</a> or
            <a href=\"https://bitbucket.org/\" rel=\"nofollow\">Bitbucket</a>.
            You should do this to make your work available for everybody. 
            The Websites also have good code management and community tools.
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_github")),
          shiny::HTML("
            <ol>
              <li>Creating GitHub repository</li>
              <li>Linking local project to Github repository</li>
              <li>Adding GitHub links to R Package DESCRIPTION</li>
              <li>Pushing local data to GitHub</li>
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
