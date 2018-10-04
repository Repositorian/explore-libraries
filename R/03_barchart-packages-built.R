#' ---
#' output: github_document
#' ---


library(here)
library(tidyverse)
## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
freqtable <- read.csv(here("data", "add-on-packages-freqtable.csv"))

## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
ggplot(freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")
ggsave(here("figs", "built-barchart.png"))
  

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that came from me (Jenny)
