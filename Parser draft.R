library(readr)
your_function <- function(test_path) {
  readr::read_delim(file = test_path)

test_path <- ""
# read first 10 lines
readr::read_lines(test_path, n_max = 10)
# read using readr::read_delim
data_readr <- readr::read_delim(test_path)
# get readr specifications
spec_data <- spec(data_readr)
#read in column types
col_type <- read_col(test_path, guess_max=10,000)
#set default if unable to read in col types
default <- read_delim(
  file,
  col_type = list(.default = col_logical())
)
#read in data
data_fread <- data.table::fread(test_path)
#Excel specific data
excel_path <- "your_file_path.xlsx"
excel_path %>% excel_sheets() %>%
  set_names() %>%
  map_dfr(read_excel, path = excel_path)
#Excel column types
read_excel(path, guess_max = 10000)
#Check for empty rows in Excel
empty_row <- function(check_row) {
  if(nrow(check_row) == 0 & length(names(check_row)) == 0){
    return(print("row does not contain data"))
  } else {
    print(excel_path)

  }
}
}

#I do need some assistance with the if statements,
#For example if the sheet is NOT excel contiue with step X
#else go to the excel function. Was having lots of trouble with that





