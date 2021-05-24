# libraries needed for this
library(tidyverse)

# function to get a messy character vector and returns paragraphs
combine_paragraphs <- function(my_char_vector) {
  # step 1: collapse everything
  char_vector_combined <- paste(my_char_vector, collapse = " ")
  
  # step 2: split by at least two spaces
  new_char_vector <- unlist(str_split(char_vector_combined,
                                      pattern = "\\s\\s+"))
  
  return(new_char_vector)
}
