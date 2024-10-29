#' Plot_function5
#'@importFrom ggplot2 ggplot aes geom_col theme_bw theme
#'@importFrom stringr str_split boundary str_count
#'
#' @param input is vector of nucleotie sequence
#'
#' @return the output is a plot that shows the number of times each nucleotide occurs
#' @export
#'
#' @examples
#'x <- "AUUUUUCTCT"
#' plot_function5(x)
plot_function5 <- function(input){
  unique_characters <- input |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_characters, function(amino_acid) stringr::str_count(string = input, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Input"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Input, y = Counts, fill = Input)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
