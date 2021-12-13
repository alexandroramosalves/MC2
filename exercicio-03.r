library(tidyverse)
rm(list = ls())

data <- read_delim("/Users/Alexandro/Desktop/pib/PIB_Municipios_2010_2014.csv", delim=";");
municipios <- read_delim("/Users/Alexandro/Desktop/pib/municipios.csv", delim=",");
estados <- read_delim("/Users/Alexandro/Desktop/pib/estados.csv", delim=",");
regioes <- read_delim("/Users/Alexandro/Desktop/pib/regioes.csv", delim=",");

data <- data %>%
  inner_join(municipios, by=c("MUN" = "codigo")) %>%
  mutate(nomeMunicipio = nome) %>%
  select(-nome) %>%
  inner_join(estados, by=c("estado" = "sigla")) %>%
  mutate(nomeEstado = nome) %>%
  select(-nome) %>%
  inner_join(regioes, by=c("regiao" = "sigla")) %>%
  mutate(nomeRegiao = nome) %>%
  select(ANO, nomeRegiao, nomeEstado, nomeMunicipio, AGRO, IND, SERV, PIB, POP);

dataCentroOeste <- data %>%
    group_by(ANO, nomeRegiao) %>%
    filter(nomeRegiao == "Centro-oeste") %>%
    summarize(pib = sum(PIB) / 1000000, 
              agro = sum(AGRO) / 1000000,
              ind = sum(IND) / 1000000, 
              serv = sum(SERV) / 1000000);

datacentroplot = ggplot(dataCentroOeste, aes(x = ANO, y = pib)) +
    geom_bar(stat="identity", fill="orange");


dataComponentes <- dataCentroOeste %>%
    gather(key="componente", value="valor", -ANO, -nomeRegiao) %>%
    filter(componente != "pib");

ggplot(dataComponentes, aes(x = ANO, y = valor, fill=componente)) +
  geom_bar(stat="identity") + 
  theme(legend.position = "bottom")
