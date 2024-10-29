#' Title
#'
#' @param c_length the length of the codon vector you would like
#'
#' @return returns a list of codons based on the number you entered
#' @export
#'
#'
lians <- function(c_length){
  codons <- sample(c("A", "T", "G", "C"), size = c_length, replace = TRUE)
  codon_list <- paste0(codons, collapse = "")
  return(codon_list)
}
