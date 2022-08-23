library(quarto)
library(purrr)

# primeiro : mostrar o rmarkdown render
caminho_qmd <- "praticas/aula_2/relatorio-completo.qmd"

# posso gerar do jeito que está!
quarto::quarto_render(caminho_qmd)

# posso gerar mudando o param
list(estado = "SP")

quarto::quarto_render(
  caminho_qmd,
  execute_params = list(estado = "SP")
)

# posso configurar outras coisas:

quarto::quarto_render(
  caminho_qmd,
  execute_params = list(estado = "SP"),
  output_file = "praticas/aula_2/SP.html",
  quiet = TRUE
)

# buscando UFs possíveis
sigbm <- readxl::read_excel("praticas/aula_2/dados/sigbm.xlsx", skip = 4)

sigbm$UF

unique(sigbm$UF)

estados_no_sigbm <- sort(unique(sigbm$UF))

# vamos começar a falar de purrr!!

# iterar!
# exemplo curto de purr
# 1, 2, 3
sqrt(1)
sqrt(2)
sqrt(3)


vetor_que_quero_repetir <- 1:3


purrr::map(
  vetor_que_quero_repetir,
  sqrt # funcao que eu quero que seja aplicada
)

purrr::map(
  vetor_que_quero_repetir,
  ~sqrt(.x)
)

purrr::walk(
  vetor_que_quero_repetir,
  ~sqrt(.x)
)

purrr::walk(
  vetor_que_quero_repetir,
  ~print(sqrt(.x))
)

# map para o render
purrr::map(
  estados_no_sigbm,
  ~quarto::quarto_render(
    caminho_qmd,
    execute_params = list(estado = .x),
    output_file = glue::glue("praticas/aula_2/{.x}.html"),
    quiet = TRUE
  )
)


# alterar o output:
purrr::map(
  estados_no_sigbm,
  ~quarto::quarto_render(
    caminho_qmd,
    output_format = "word",
    execute_params = list(estado = .x),
    output_file = glue::glue("praticas/aula_2/{.x}.docx"),
    quiet = TRUE
  )
)



