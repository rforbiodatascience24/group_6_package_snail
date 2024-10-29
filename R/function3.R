#' Title
#'
#' @param input string of bases
#' @param divide this is basically a function that returns codons from the string of bases
#' @param start first base in the string of bases
#'
#' @return vector of codons
#' @export
divide <- function(input, start = 1){
  size <- nchar(input)
  codons <- substring(input,
                      first = seq(from = start, to = size-3+1, by = 3),
                      last = seq(from = 3+start-1, to = size, by = 3))
  return(codons)
}
