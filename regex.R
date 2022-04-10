##%######################################################%##
#                                                          #
####                    Enron email                     ####
####                       data:                        ####
####   https://github.com/UBC-STAT/stat545.s... STAT    ####
####                    545 website:                    ####
####      https://stat545.stat.ubc.ca Produced and      ####
####                   instructed by                    ####
####      Vincenzo Coia: https://vincenzocoia.coia      ####
####                     Edited by                      ####
####   Gabriel Galand: https://www.gabrielgaland.com    ####
#          https://www.youtube.com/watch?v=I0dJ1zpxAtU     #
##%######################################################%##




myurl <- "https://raw.githubusercontent.com/UBC-STAT/stat545.stat.ubc.ca/master/content/data/enron/enron.csv"
enron <- read.csv(myurl) 

library(tidyverse)

# Basic Pattern Matching
# Anchors ^ $ (and escape  \)
# Character groups []
# Multiples {}* 
# Character clusters ()  
 
enron %>% 
  drop_na() %>% 
  filter(str_detect(email, "@")) 

email <- enron$email 
str_subset(email, "Date: ")
str_view_all(email, "Date: ")

# anchors  

temp <- enron %>% 
  filter(str_detect(email, "\\$"))

# Char groups  
temp <- enron %>% 
  filter(str_detect(email, "[wW]hat"))

temp <- enron %>% 
  filter(str_detect(email, "^[0-9]")) 


temp <- enron %>% 
  filter(str_detect(email, "^[a-eA-E]"))

temp <- enron %>% 
  filter(str_detect(email, "20..09"))

## Multiples  
temp <- enron %>% 
  filter(str_detect(email, "[0-9]{3}-[0-9]{3}-[0-9]{4}"))

# Between beginning and end, any number of letters or spaces followed by an exclamation point
temp <- enron %>% 
  filter(str_detect(email, "^[a-zA-Z]*!$")) 

# Character clusters () 
# find email addresses 
temp <- enron %>% 
  filter(str_detect(email, "@.*\\.(edu|net)"))

temp <- enron %>% 
  filter(str_detect(email, "Monday|Tuesday"))

