library(tidyverse)

my_data <- read.csv("ABC-Data.txt", header = TRUE, sep = "\t")

my_data

length(unique(my_data[["CLASS"]]))

paste0(seq.int(1, 43), collapse=",")

unique(my_data$COLLEGE)

unique(my_data$MAJOR) 
length(unique(my_data$MAJOR))

my_data$CLASS = factor(my_data$CLASS,
                                  levels = c('Junior', 'Freshman', 'Sophomore', 'Senior'),
                                  labels = c(1, 2, 3, 4))

my_data$COLLEGE = factor(my_data$COLLEGE,
                         levels = c('A&S','Bus','Educ','Nurs','Hss'),
                         labels = c(1, 2, 3, 4, 5))



unique(my_data$RESIDENCY) 
my_data$RESIDENCY = factor(my_data$RESIDENCY,
                           levels = c('Resident','Nonresident'),
                           labels = c(1, 2))


unique(my_data$TYPE)
my_data$TYPE = factor(my_data$TYPE,
                      levels = c('Transfer','New','Readmit'),
                      labels = c(1, 2, 3))

unique(my_data$MAJOR)
length(unique(my_data$MAJOR))
my_data$MAJOR = factor(my_data$MAJOR,
                       levels = c('Biochm','Geog','Acct','Socstd','Chem','CS','Undecl','Math','Soc','Art','Nursng','Mktg','SpEd','ElEd','Engl','Biolgy','Busadm','Mgmt','Comm','Phymat','Musthr','Mis','Socwrk','Psych','Prepha','Hcad','Span','Music','Preopt','Polsci','Histry','Kins','McOm','Comdis','Busfin','Pre-Pt','Cs','Journ','Geolgy','Crmjus','Prevet','Premed','Preden'),
                       labels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43))

unique(my_data$GENDER)
my_data$GENDER = factor(my_data$GENDER,
                        levels = c('F','M'),
                        labels = c(1, 2))

my_data$GENDER = as.numeric(my_data$GENDER)
my_data$AGE = as.numeric(my_data$AGE)
my_data$CLASS = as.numeric(my_data$CLASS)
my_data$COLLEGE = as.numeric(my_data$COLLEGE)
my_data$RESIDENCY = as.numeric(my_data$RESIDENCY)
my_data$TYPE = as.numeric(my_data$TYPE)

library("ggplot2")                     # Load ggplot2 package
library("GGally")  
library(psych)

pairs.panels(my_data, 
             method = "pearson", # correlation method
             hist.col = "#00AFBB",
             density = TRUE,  # show density plots
             ellipses = TRUE, # show correlation ellipses,
)

require(corrplot)

corr <- cor(my_data)
corrplot(corr, tl.cex = 2)
