
# Relatórios e apresentações automáticas

<!-- README.md is generated from README.Rmd. Please edit that file -->

Repositório principal do curso Relatórios e apresentações automáticas.

Inscreva-se no curso:
<https://loja.curso-r.com/relatorios-e-apresentacoes-automaticas.html>

**Acesse o material completo do curso escolhendo uma das turmas
abaixo**.

| Turma           | Material                                      | Github                                         |
|:----------------|:----------------------------------------------|:-----------------------------------------------|
| Outubro de 2022 | <https://curso-r.github.io/202210-relatorios> | <https://github.com/curso-r/202210-relatorios> |
| Agosto de 2022  | <https://curso-r.github.io/202208-relatorios> | <https://github.com/curso-r/202208-relatorios> |
| Maio de 2022    | <https://curso-r.github.io/202205-relatorios> | <https://github.com/curso-r/202205-relatorios> |

<!-- **Trabalho de conclusão**: fazer o #tidytuesday da semana ou um à sua escolha. Fazer não só a visualização, mas uma apresentação ou relatório -->

## Pacotes necessários

``` r
# Principal
principal <- c(
  "tidyverse",
  "xaringan",
  "flexdashboard",
  "xaringanthemer",
  "prettydoc",
  "patchwork",
  "fs",
  "janitor"
)
install.packages(principal)

# Pacotes instalados via GitHub
if (!require(remotes)) install.packages("remotes")
remotes::install_github("abjur/abjData")
remotes::install_github("cienciadedatos/dados")

# esses pacotes são para os showcases funcionarem
showcase <- c(
  "pagedown",
  "officedown",
  "rticles",
  "flextable",
  ## não instale o webshot ainda; vamos instalar em aula
  # "webshot",
  "officedown",  "bookdown"
)
install.packages(showcase)
```
