##%######################################################%##
#                                                          #
####                   Importing CSV                    ####
####                        from                        ####
####                    googledrive                     ####
####    https://www.youtube.com/watch?v=qzc4JIdVTuQ     ####
#                                                          #
##%######################################################%##

library(googledrive)
drive_auth()
gdrive <-drive_find(n_max = 10) 
gdrive
drive_download("penguins.csv")
