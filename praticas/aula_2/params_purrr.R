# primeiro : mostrar o rmarkdown render

caminho_rmd <- here::here("praticas/aula_2/relatorio-completo.Rmd")

# posso gerar do jeito que está!

rmarkdown::render(caminho_rmd)

# posso gerar mudando o param
rmarkdown::render(caminho_rmd, params = list(estado = "SP"))

# posso configurar outras coisas:

rmarkdown::render(caminho_rmd, params = list(estado = "SP"),
                  output_file = "SP.html")

# buscando UFs possíveis
sigbm <- read_xlsx("dados/sigbm.xlsx", skip = 4) |>
  clean_names()

estados_no_sigbm <- sort(unique(sigbm$uf))


# purrr

library(purrr)
# criar a pasta caso nao exista
fs::dir_create("praticas/aula_2/relatorios_uf")

# iterar!

# exemplo de map
map(1:3, ~sqrt(.x))

# map para o render
map(
  estados_no_sigbm,
  ~ rmarkdown::render(
    caminho_rmd,
    params = list(estado = .x),
    output_file = glue::glue("relatorios_uf/{.x}.html")
  )
)
