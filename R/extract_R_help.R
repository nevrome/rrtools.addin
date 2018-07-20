#' huhu
#'
#' https://stackoverflow.com/questions/9192589/how-can-i-extract-text-from-rs-help-command
#'
#' @export
extract_help_as_html <- function(pkg, fn = NULL) {
  rdbfile <- file.path(find.package(pkg), "help", pkg)
  rdb <- tools:::fetchRdDB(rdbfile, key = fn)
  convertor <- tools::Rd2HTML
  f <- function(x) capture.output(convertor(x))
  if(is.null(fn)) lapply(rdb, f) else f(rdb)
}
