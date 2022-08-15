## ----pacotes-------------------------------------------------------
# Carregar pacotes:
library(janitor)
library(tidyverse)
library(readxl)


## ----download-data-------------------------------------------------
## # Fazer download da base de dados do dia atual:
## # url para baixar os dados
url_request <- "https://app.anm.gov.br/SIGBM/Publico/ClassificacaoNacionalDaBarragem/ExportarExcel"
##
## # cria a pasta dados (se não existir)
fs::dir_create("dados")
##
## # funcão que baixa os dados
httr::POST(url_request, httr::write_disk("dados/sigbm.xlsx"))


## ----load-data-----------------------------------------------------
# Importar a base de dados:
# ler os dados baixados
sigbm <- read_xlsx("dados/sigbm.xlsx", skip = 4) |>
  clean_names()


# ----- data de atualização -----
data_atualizacao_sigbm <- read_xlsx("dados/sigbm.xlsx",
                                    col_names = FALSE,
                                    n_max = 1) |>
  pull() |>
  str_extract(":.*-") |>
  str_remove(":") |>
  str_remove("-") |>
  str_trim()


## ----tabela-top-10-------------------------------------------------
sigbm |>
  count(uf, sort = TRUE) |>
  slice(1:10) |>
  select(`Estado` = uf, `Número de barragens` = n) |>
  gt::gt(caption = "Dez estados brasileiros com mais barragens cadastradas no SIG-BM")


## ----plot-dpa------------------------------------------------------
sigbm |>
  count(dano_potencial_associado) |>
    mutate(
    dano_potencial_associado = if_else(
      dano_potencial_associado == "N/A",
      "Não se aplica",
      dano_potencial_associado
    ),
    dano_potencial_associado = factor(
      dano_potencial_associado,
      levels = c("Não se aplica", "Baixo", "Médio", "Alto")
    )
  ) |>
  ggplot() +
  aes(x = dano_potencial_associado, y = n) +
  geom_col(fill = "lightblue") +
  theme_bw() +
  labs(x = "Dano potencial associado (DPA)", y = "Quantidade de barragens",
       title = "Dano potencial associado de barragens de mineração no Brasil")

