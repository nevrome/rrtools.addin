cloud_server <- function(input, output, session) {
  
  shiny::observeEvent(input$run_github, {
    
    license_function <- switch(
      input$license_selection,
      CC0 = "usethis::use_cc0_license",
      MIT = "usethis::use_mit_license",
      Apache_v2 = "usethis::use_apl2_license",
      GPL_v3 = "usethis::use_gpl3_license"
    )
    
    rstudioapi::sendToConsole(
      paste0(paste(license_function), "(\"", paste(input$license_names), "\")")
    )
    
    shiny::stopApp()
    
  })
  
}
