extract_help_as_html <- function(pkg, fn = NULL) {
  rdbfile <- file.path(find.package(pkg), "help", pkg)
  rdb <- utils::getFromNamespace("fetchRdDB", "tools")(rdbfile, key = fn) 
  convertor <- tools::Rd2HTML
  f <- function(x) utils::capture.output(convertor(x))
  if(is.null(fn)) lapply(rdb, f) else f(rdb)
}
