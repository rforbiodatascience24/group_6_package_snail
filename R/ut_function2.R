#' ut_function2
#'
#' @param input is a character string where T will be replaced with U
#'
#' @return gives us the modified UT string where every T is U is replaced by U
#' @export
#'
#' @examples
#' x <- "ATT"
#' ut_function2(x)
ut_function2 <- function(input){
  new_vector <- gsub("T", "U", input)
  return(new_vector)
}
