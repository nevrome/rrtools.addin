license_ui <- function(id) {

  ns <- shiny::NS(id)
  
	miniUI::miniTabPanel(
    title = "License",
    icon = shiny::icon("handshake"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("I need a software license?"),
          shiny::HTML("<p> 
            A research compendium usually contains code and data. If you provide your intellectual property
            in an open and reproducible form, you have to assume that others will use it for their purposes.
            To codify what kind of things they are allowed to do you need a 
            <a href=\"https://choosealicense.com\" rel=\"nofollow\">project license</a>. 
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("usethis::use_..._license")),
          shiny::HTML("
            <ol>
              <li>Configures DESCRIPTION file to include the new license</li>
              <li>Writes LICENSE files</li>
              <li>Configures R package files to ignore LICENSE file</li>
            </ol>
          ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h3("License"),
            shiny::selectInput(
              inputId = ns("license_selection"),
              label = "Which License do you want?",
              choices = c("CC0", "MIT", "Apache_v2", "GPL_v3"),
              selected = "MIT",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink("circle-info") %>%
                  bsplus::bs_embed_popover(
                    title = "What do these licenses offer?", 
                    content = "
                      <a href=\"https://creativecommons.org/share-your-work/public-domain/cc0/\" rel=\"nofollow\">CC0</a>,
                      <a href=\"https://choosealicense.com/licenses/mit/\" rel=\"nofollow\">MIT</a>,
                      <a href=\"https://choosealicense.com/licenses/apache-2.0/\" rel=\"nofollow\">Apache v2.0</a>,
                      <a href=\"https://choosealicense.com/licenses/gpl-3.0/\" rel=\"nofollow\">GPL v3.0</a> <br>
                      If you don't want to use one of these four you can add any 
                      other license in your LICENSE file. But it's recommended
                      not to use obscure or self-written licenses.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::textInput(
              inputId = ns("license_names"),
              label = "What's the name of the copyright holder? Separate multiple individuals with \";\".",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink("circle-info") %>%
                  bsplus::bs_embed_popover(
                    title = "Who is the copyright holder?", 
                    content = "
                      Most likely you, maybe also your co-authors. 
                      Uncer certain conditions also your company or institution.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run_license"),
              label = "Enable license",
              icon = shiny::icon("circle-arrow-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("usethis", "licenses"))
        )
      )
    )
  )

}
