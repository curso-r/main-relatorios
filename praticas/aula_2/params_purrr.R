# primeiro : mostrar o rmarkdown render

caminho_rmd <- here::here("praticas/aula_2/relatorio-completo.Rmd")

# posso gerar do jeito que está!

rmarkdown::render(caminho_rmd)

# posso gerar mudando o param

list(estado = "SP")

rmarkdown::render(caminho_rmd,
                  params = list(estado = "SP"))

# posso configurar outras coisas:

rmarkdown::render(caminho_rmd,
                  params = list(estado = "SP"),
                  output_file = "SP.html")

# buscando UFs possíveis
sigbm <- read_xlsx("dados/sigbm.xlsx", skip = 4) |>
  clean_names()

sigbm$uf

unique(sigbm$uf)

estados_no_sigbm <- sort(unique(sigbm$uf))


# vamos começar a falar de purrr!!

library(purrr)
# criar a pasta caso nao exista
fs::dir_create("praticas/aula_2/relatorios_uf")

# iterar!
# exemplo curto de purr
# 1, 2, 3
sqrt(1)
sqrt(2)
sqrt(3)


vetor_que_quero_repetir <- 1:3


purrr::map(vetor_que_quero_repetir,
           # funcao que eu quero que seja aplicada
           sqrt)

purrr::map(vetor_que_quero_repetir,
           ~ sqrt(.x))



# map para o render
map(
  estados_no_sigbm,
  ~ rmarkdown::render(
    caminho_rmd,
    params = list(estado = .x),
    output_file = glue::glue("relatorios_uf/{.x}.html")
  )
)


# alterar o output:
map(
  estados_no_sigbm,
  ~ rmarkdown::render(
    caminho_rmd,
    # output_format = word_document(),
    output_format = prettydoc::html_pretty(theme = "architect"),
    params = list(estado = .x),
    output_file = glue::glue("relatorios_uf/{.x}.html")
  )
)



# imprime em PDF!
pagedown::chrome_print("relatorio-parte-2.html")

caminhos_html <- fs::dir_ls("relatorios_uf/")

caminhos_html_base <- list.files("relatorios_uf", full.names = TRUE)


# map(vetor, funcao)

map(caminhos_html, pagedown::chrome_print)



