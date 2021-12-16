library(tidyverse)
rm(list = ls())

data_t3_t4 <- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",nrows=50)

#ACAD I0 IC
ACAD_I0_IC_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(best), digits = 4)));

ACAD_I0_IC_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(sd(best), digits = 4)));

#ACAD I0 IHV
ACAD_I0_IHV_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(hv), digits = 4)));

ACAD_I0_IHV_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(sd(hv), digits = 4)));

#ACAD I0 IGD
ACAD_I0_IGD_NSGAII <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = toString(round(mean(gd), digits = 4)));

ACAD_I0_IGD_NSGAII_DESV <- data_t3_t4 %>%
  summarize(ACAD_I0_IC_NSGAII = round(sd(gd),5));

#ACAD I0 NSGAII
ACAD_I0_IC_NSGAII  = paste0(ACAD_I0_IC_NSGAII, "+-", ACAD_I0_IC_NSGAII_DESV)
ACAD_I0_IHV_NSGAII = paste0(ACAD_I0_IHV_NSGAII, "+-", ACAD_I0_IHV_NSGAII_DESV) 
ACAD_I0_IGD_NSGAII = paste0(ACAD_I0_IGD_NSGAII, "+-", ACAD_I0_IGD_NSGAII_DESV)

data_t3_t5 <- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 265,nrows = 50)

#WMET I5 IC
WMET_I5_IC_NSGAII <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0079), digits = 4)));

WMET_I5_IC_NSGAII_DESV <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.0079), digits = 4)));

#WMET I5 IHV
WMET_I5_IHV_NSGAII <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.3547), digits = 4)));

WMET_I5_IHV_NSGAII_DESV <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.3547), digits = 4)));

#WMET I5 IGD
WMET_I5_IGD_NSGAII <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0418), digits = 4)));

WMET_I5_IGD_NSGAII_DESV <- data_t3_t5 %>%
  summarize(WMET_I5_IC_NSGAII = round(sd(X0.0418),5));

WMET_I5_IC  = paste0(WMET_I5_IC_NSGAII,  "+-", WMET_I5_IC_NSGAII_DESV)
WMET_I5_IHV = paste0(WMET_I5_IHV_NSGAII, "+-", WMET_I5_IHV_NSGAII_DESV) 
WMET_I5_IGD = paste0(WMET_I5_IGD_NSGAII, "+-", WMET_I5_IGD_NSGAII_DESV) 

data_t3_t6 <- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 159,nrows = 50)

#PSOA I3 IC
PSOA_I3_IC_NSGAII <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0342), digits = 4)));

PSOA_I3_IC_NSGAII_DESV <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.0342), digits = 4)));

#PSOA I3 IHV
PSOA_I3_IHV_NSGAII <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.3579), digits = 4)));

PSOA_I3_IHV_NSGAII_DESV <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.3579), digits = 4)));

#PSOA I3 IHV
PSOA_I3_IGD_NSGAII <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0215), digits = 4)));

PSOA_I3_IGD_NSGAII_DESV <- data_t3_t6 %>%
  summarize(WMET_I5_IC_NSGAII = round(sd(X0.0215),5));

PSOA_I3_IC_NSGAII = paste0(PSOA_I3_IC_NSGAII,  "+-", PSOA_I3_IC_NSGAII_DESV)
PSOA_I3_IHV_NSGAII = paste0(PSOA_I3_IHV_NSGAII, "+-", PSOA_I3_IHV_NSGAII_DESV) 
PSOA_I3_IGD_NSGAII = paste0(PSOA_I3_IGD_NSGAII, "+-", PSOA_I3_IGD_NSGAII_DESV)

data_t3_t7<- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 159,nrows = 50)

#WAMS IC
WAMS_I4_IC_NSGAII <- data_t3_t7%>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0342), digits = 4)));

WAMS_I4_IC_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.0342), digits = 4)));

#PSOA I3 IHV
WAMS_I4_IHV_NSGAII <- data_t3_t7 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.3579), digits = 4)));

WAMS_I4_IHV_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(sd(X0.3579), digits = 4)));

#WAMS I4 IHV
WAMS_I4_IGD_NSGAII <- data_t3_t7 %>%
  summarize(WMET_I5_IC_NSGAII = toString(round(mean(X0.0215), digits = 4)));

WAMS_I4_IGD_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WMET_I5_IC_NSGAII = round(sd(X0.0215),5));

WAMS_I4_IC_NSGAII = paste0(WAMS_I4_IC_NSGAII,  "+-", WAMS_I4_IC_NSGAII_DESV)
WAMS_I4_IHV_NSGAII = paste0(WAMS_I4_IHV_NSGAII, "+-", WAMS_I4_IHV_NSGAII_DESV) 
WAMS_I4_IGD_NSGAII = paste0(WAMS_I4_IGD_NSGAII, "+-", WAMS_I4_IGD_NSGAII_DESV) 

varo = c(ACAD_I0_IC_NSGAII,
         ACAD_I0_IHV_NSGAII,
         ACAD_I0_IGD_NSGAII,
         WMET_I5_IC,
         WMET_I5_IHV,
         WMET_I5_IGD,
         PSOA_I3_IC_NSGAII, 
         PSOA_I3_IHV_NSGAII,
         PSOA_I3_IGD_NSGAII,
         WAMS_I4_IC_NSGAII,
         WAMS_I4_IHV_NSGAII,
         WAMS_I4_IGD_NSGAII,
         "0.0024",
         "0,2303",
         "0.1783",
         "0.0055",
         "0.2544",
         "0.2420",
         "0.0063",
         "0.1496",
         "0.2309",
         
         "0.0072",
         "0.3589",
         "0.0488",
         "0.0055",
         "0.3538",
         "0.0418",
         "0.0063",
         "0.2069",
         "0.2725",
         
         "0.0048",
         "0.0663",
         "0.0000",
         "0.0055",
         "0.1913",
         "0.1530",
         "0.0063",
         "0.0633",
         "0.0000",
         
         "0.0053",
         "0.2547",
         "0.2414",
         "0.0079",
         "0.3547",
         "0.0418",
         "0.0053",
         "0.1718",
         "0.1510"
         );

mat <- matrix(varo,  nrow = 12,dimnames = 
list(c(
        "ACAD I0 Config IC","ACAD I0 Config IHV","ACAD I0 Config IGD",
       "WMET I5 Config IC","WMET I5 Config IHV","WMET I0 Config IGD",
       "PSOA I3 Config IC","PSOA I3 Config IHV","PSOA I3 Config IGD",
       "WAMS I3 Config IC","WAMS I3 Config IHV","WAMS I3 Config IGD"),
     
     c("NSGAII","MAR","SH","CPM")))
view(mat)