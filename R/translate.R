translate <- function(codons){
  translated_AA <- paste0(codon_table_snail2[codons], collapse = "")
  return(translated_AA)
}
