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

data_t3_t7<- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 212,nrows = 50)

#WAMS IC
WAMS_I4_IC_NSGAII <- data_t3_t7%>%
  summarize(WAMS_I4_IC_NSGAII = toString(round(mean(X0.0063), digits = 4)));

WAMS_I4_IC_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WAMS_I4_IC_NSGAII_DESV = toString(round(sd(X0.0063), digits = 4)));

#WAMS I4 IHV
WAMS_I4_IHV_NSGAII <- data_t3_t7 %>%
  summarize(WAMS_I4_IHV_NSGAII = toString(round(mean(X0.2069), digits = 4)));

WAMS_I4_IHV_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WAMS_I4_IHV_NSGAII_DESV = toString(round(sd(X0.2069), digits = 4)));

#WAMA I4 IGD
WAMS_I4_IGD_NSGAII <- data_t3_t7 %>%
  summarize(WAMS_I4_IGD_NSGAII = toString(round(mean(X0.2725), digits = 4)));

WAMS_I4_IGD_NSGAII_DESV <- data_t3_t7 %>%
  summarize(WAMS_I4_IGD_NSGAII_DESV = round(sd(X0.2725),5));

WAMS_I4_IC_NSGAII = paste0(WAMS_I4_IC_NSGAII,  "+-", WAMS_I4_IC_NSGAII_DESV)
WAMS_I4_IHV_NSGAII = paste0(WAMS_I4_IHV_NSGAII, "+-", WAMS_I4_IHV_NSGAII_DESV) 
WAMS_I4_IGD_NSGAII = paste0(WAMS_I4_IGD_NSGAII, "+-", WAMS_I4_IGD_NSGAII_DESV) 

data_t3_t8<- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 106,nrows = 50)

#PARM I2 IC
PARM_I2_IC_NSGAII <- data_t3_t8%>%
  summarize(PARM_I2_IC_NSGAII = toString(round(mean(X0.0115), digits = 4)));

PARM_I2_IC_NSGAII_DESV <- data_t3_t8 %>%
  summarize(PARM_I2_IC_NSGAII_DESV = toString(round(sd(X0.0115), digits = 4)));

#PARM I2 IHV
PARM_I2_IHV_NSGAII <- data_t3_t8 %>%
  summarize(PARM_I2_IHV_NSGAII = toString(round(mean(X0.3544), digits = 4)));

PARM_I2_IHV_NSGAII_DESV <- data_t3_t8 %>%
  summarize(PARM_I2_IHV_NSGAII_DESV = toString(round(sd(X0.3544), digits = 4)));

#PARM I2 IGD
PARM_I2_IGD_NSGAII <- data_t3_t8 %>%
  summarize(PARM_I2_IGD_NSGAII = toString(round(mean(X0.0300), digits = 4)));

PARM_I2_IGD_NSGAII_DESV <- data_t3_t8 %>%
  summarize(PARM_I2_IGD_NSGAII_DESV = round(sd(X0.0300),5));

PARM_I2_IC_NSGAII = paste0(PARM_I2_IC_NSGAII,  "+-", PARM_I2_IC_NSGAII_DESV)
PARM_I2_IHV_NSGAII = paste0(PARM_I2_IHV_NSGAII, "+-", PARM_I2_IHV_NSGAII_DESV) 
PARM_I2_IGD_NSGAII = paste0(PARM_I2_IGD_NSGAII, "+-", PARM_I2_IGD_NSGAII_DESV)

data_t3_t10<- read.delim("C:\\UNIRIO\\METODOLOGIA CIENTIDFICA II\\Trabalho\\Trabalho Final - Dados\\data_t3-t4.txt",skip = 53,nrows = 50)

#OMET I1 IC
OMET_I1_IC_NSGAII <- data_t3_t10%>%
  summarize(OMET_I1_IC_NSGAII = toString(round(mean(X0.0072), digits = 4)));

OMET_I1_IC_NSGAII_DESV <- data_t3_t10 %>%
  summarize(OMET_I1_IC_NSGAII_DESV = toString(round(sd(X0.0072), digits = 4)));

#OMET I1 IHV
OMET_I1_IHV_NSGAII <- data_t3_t10 %>%
  summarize(OMET_I1_IHV_NSGAII = toString(round(mean(X0.3589), digits = 4)));

OMET_I1_IHV_NSGAII_DESV <- data_t3_t10 %>%
  summarize(OMET_I1_IHV_NSGAII_DESV = toString(round(sd(X0.3589), digits = 4)));

#OMET I1 IGD
OMET_I1_IGD_NSGAII <- data_t3_t10 %>%
  summarize(OMET_I1_IGD_NSGAII = toString(round(mean(X0.0488), digits = 4)));

OMET_I1_IGD_NSGAII_DESV <- data_t3_t10 %>%
  summarize(OMET_I1_IGD_NSGAII_DESV = round(sd(X0.0488),5));

OMET_I1_IC_NSGAII = paste0(OMET_I1_IC_NSGAII,  "+-", OMET_I1_IC_NSGAII_DESV)
OMET_I1_IHV_NSGAII = paste0(OMET_I1_IHV_NSGAII, "+-", OMET_I1_IHV_NSGAII_DESV) 
OMET_I1_IGD_NSGAII = paste0(OMET_I1_IGD_NSGAII, "+-", OMET_I1_IGD_NSGAII_DESV)

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
         PARM_I2_IC_NSGAII,
         PARM_I2_IHV_NSGAII,
         PARM_I2_IGD_NSGAII,
         OMET_I1_IC_NSGAII,
         OMET_I1_IHV_NSGAII,
         OMET_I1_IGD_NSGAII,
         
         "0.0024",
         "0,2303",
         "0.1783",
         "0.0055",
         "0.2544",
         "0.2420",
         "0.0063",
         "0.1496",
         "0.2309",
         "0.0053",
         "0.2547",
         "0.2414",
         "0.0137",
         "0.2308",
         "0.1518",
         "0.0076",
         "0.2545",
         "0.2346",
         
         "0.0072",
         "0.3589",
         "0.0488",
         "0.0055",
         "0.3538",
         "0.0418",
         "0.0063",
         "0.2069",
         "0.2725",
         "0.0079",
         "0.3547",
         "0.0418",
         "0.0342",
         "0.3579",
         "0.0215",
         "0.0115",
         "0.3544",
         "0.0300",

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
         "0.1718",
         "0.1510",
         "0.0137",
         "0.0498",
         "0.0000",
         "0.0076",
         "0.2089",
         "0.1356"
         
         );

mat <- matrix(varo,  nrow = 18,dimnames = 
list(c("ACAD I0 Config IC","ACAD I0 Config IHV","ACAD I0 Config IGD",
       "WMET I5 Config IC","WMET I5 Config IHV","WMET I0 Config IGD",
       "PSOA I3 Config IC","PSOA I3 Config IHV","PSOA I3 Config IGD",
       "WAMS I4 Config IC","WAMS I4 Config IHV","WAMS I4 Config IGD",
       "PARM I2 Config IC","PARM I2 Config IHV","PARM I2 Config IGD",
       "OMET I1 Config IC","OMET I1 Config IHV","OMET I1 Config IGD"),
     
     c("NSGAII","MAR","SH","CPM")))
view(mat)