library(tidyverse)
rm(list = ls())

data_t3_t4 <- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",nrows=50)

ACAD_I0_IC_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(best), digits = 4)));

ACAD_I0_IC_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(sd(best), digits = 4)));


ACAD_I0_IHV_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(hv), digits = 4)));

ACAD_I0_IHV_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(sd(hv), digits = 4)));

ACAD_I0_IGD_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(gd), digits = 4)));

ACAD_I0_IGD_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = floor(sd(gd)));

IC = paste0(ACAD_I0_IC_NSGAII, "+-", ACAD_I0_IC_NSGAII_DESV)
IHV = paste0(ACAD_I0_IHV_NSGAII, "+-", ACAD_I0_IHV_NSGAII_DESV) 
IGD = paste0(ACAD_I0_IGD_NSGAII, "+-", ACAD_I0_IGD_NSGAII_DESV) 

varo = c(IC,IHV,IGD,"0.0024","0.2303","0.1783","0.0072","0.3589","0.0488","0.0048","0.0663","0.0000")

mat <- matrix(varo,  nrow = 3,dimnames = list(c("ACAD I0 Config IC","ACAD I0 Config IHV","ACAD I0 Config IGD"), c("NSGAII","MAR","SH","CPM")))
view(mat)



