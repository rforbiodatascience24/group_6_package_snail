#' ut_function2
#'
#' @param dna_seq is a character string of nucleotides (DNA) where T will be replaced with U
#'
#' @return gives us the modified UT string (RNA) where every T is replaced by U
#' @export
#'
#' @examples
#' x <- "ATT"
#' ut_function2(x)
ut_function2 <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
