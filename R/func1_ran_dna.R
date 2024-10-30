#' Title
#'
#' @param seq_length the length of the codon vector you would like
#'
#' @return returns a list of codons based on the number you entered
#' @export
#'
#'
ran_DNA <- function(seq_length){
  codons <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  codon_list <- paste0(codons, collapse = "")
  return(codon_list)
}
