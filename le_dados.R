
library(sidrar)
library(tidyverse)
library(janitor)

dados <- get_sidra(api = "/t/839/n6/all/v/109,214/p/2018,2019/c81/31693")


dados_limpos <- dados %>% 
  clean_names() %>% 
  select(
    municipio_codigo,
    valor,
    municipio,
    variavel,
    ano
  ) %>% 
  pivot_wider(
    names_from = variavel,
    values_from = valor
  ) %>% 
  clean_names()

