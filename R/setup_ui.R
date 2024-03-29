setup_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  miniUI::miniTabPanel(
    title = "Setup",
    icon = shiny::icon("globe"),
    shiny::fillRow(
      flex = c(1, 1, 1),
      shiny::fillCol(
        shiny::div(
          class = "explainbox_1",
          shiny::h4("A new project!"),
          shiny::HTML("<p> 
            Each reproducible research project lives in an own directory on your computer.
            This directory needs some special files and subfolders to work as an
            <a href=\"http://r-pkgs.had.co.nz/package.html\" rel=\"nofollow\">R package</a>.
            The first step in the creation of a research compendium is to create and
            configure all of this.
          </p>")
        ),
        shiny::div(
          class = "explainbox_2",
          shiny::h4("The function", shiny::strong("rrtools::use_compendium")),
          shiny::HTML("
            <ol>
              <li>Creates an R package \"directory-name\" in a directory</li>
              <li>Writes and Preconfigures R package files</li>
              <li>Opens project in RStudio</li>
            </ol>
          ")
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "function_interface_outer",
          shiny::div(
            class = "function_interface_inner",
            shiny::h3("Create a research compendium"),
            shiny::strong("Create an empty, git initialized directory"),
            shiny::HTML("<p> 
                Usually we want our research compendium to be managed by the version control software 
                <a href=\"https://git-scm.com\" rel=\"nofollow\">Git</a>.
                Start on Github, Gitlab, or a similar web service, and 
                <a href=\"https://happygitwithr.com/new-github-first.html\" rel=\"nofollow\">create an empty repository</a>
                called pkgname (you should use a different name, please follow the rules below) on that service. 
                Then clone that repository to have a local empty directory on your computer, called pkgname, 
                that is linked to this remote repository. 
              </p> 
              <p>
                The name of your project has to be a good representation 
                of its content and also has to fulfil some technical 
                requirements. See 
                <a href=\"http://r-pkgs.had.co.nz/package.html#naming\" rel=\"nofollow\">Hadley Wickhams helpful hints</a>
                for advice. Jim Hesters R package 
                <a href=\"https://github.com/ropenscilabs/available\" rel=\"nofollow\">available</a>
                makes it easy to check if your name is already in use 
                somewhere or if it has some unintended meanings.
              </p>"
            ),
            shiny::strong("Select the directory:"),
            shinyFiles::shinyDirButton(
              id = ns("use_compendium_path"),
              label = "Choose directory",
              title = "Directory selection",
              icon = shiny::icon("folder")
            ),
            shiny::br(),
            shiny::strong("The new project will be created here:"),
            shiny::htmlOutput(ns("use_compendium_path_ready")),
            shiny::selectInput(
              inputId = ns("rstudio_selection"),
              label = "Should an RStudio Project file be created?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink("circle-info") %>%
                  bsplus::bs_embed_popover(
                    title = "What's an RStudio Project?", 
                    content = "
                      If you work in RStudio, then the 
                      <a href=\"https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects\" rel=\"nofollow\">RStudio Project</a>
                      infrastructure is the best and most natural way of 
                      organizing your work. The project file is a text file
                      that contains some configuration values for your project.
                      You don't have to edit it directly, because RStudio 
                      automatically changes it according to your settings in 
                      the RStudio menus.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::selectInput(
              inputId = ns("open_selection"),
              label = "Should a new RStudio Session be started?",
              choices = c("Yes", "No"),
              selected = "Yes",
              width = "95%"
            ) %>%
              bsplus::shinyInput_label_embed(
                bsplus::shiny_iconlink("circle-info") %>%
                  bsplus::bs_embed_popover(
                    title = "What's going to happen?", 
                    content = "
                      If you choose Yes, then a new RStudio window will open
                      and you can directly start to work in your new project.
                    ",
                    placement = "left",
                    html = "true"
                  )
              ),
            shiny::actionButton(
              inputId = ns("run_use_compendium"),
              label = "Create new project",
              icon = shiny::icon("circle-arrow-right"),
              width = "95%"
            )
          )
        )
      ),
      shiny::fillCol(
        shiny::div(
          class = "helpbox",
          shiny::HTML(extract_help_as_html("rrtools", "use_compendium"))
        )
      )
    )
  )
  
}
