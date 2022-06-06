---
editor_options: 
  markdown: 
    wrap: 72
---

Nessa versão do curso, teremos um slide apenas, com as marcações das aulas.

A parte prática e teórica se misturam (parecido com o curso de pacotes).

## Aula 1: Introdução ao R Markdown

-   Introdução ao curso (+/- 30 min)
-   Teoria (usar slides): 
    -   Pacote R Markdown e exemplos do que conseguimos fazer com
        extensões
    -   Markdown
    -   Adicionar conteúdo com código: chunks.
    -   Outputs básicos: HTML, PDF, Word
    -   Usando templates: exemplo com o pacote {prettydoc}

-   Prática (no RStudio, alternando com os slides): 
    -   Criar um relatório do 0; alterar informações básicas no YAML;
        mostrar alterando o conteúdo básico com markdown; adicionar
        chunk com código; knit para os três outputs básicos e prettydoc

### Comentário @jtrecenti:

Qual é a motivação? - Acho que já temos isso feito, mas nos slides vale
comentar em quais situações do dia-a-dia vale a pena usar RMarkdown (com
exemplos): - listas de exercícios da escola / faculdade - no trabalho:
enviar relatórios periódicos por e-mail - apresentações técnicas -
dashboard rápido - site com portfolio - CV

## Aula 2: Continuação sobre R Markdown

-   Teoria: 
    -   Opções de chunk
    -   Adicionar figuras e gráficos
    -   Adicionar tabelas
    -   adicionar inline code;
    -   RMarkdown com parâmetros
    -   Rmd pensando em produtos acadêmicos:
        -   Adicionar referências (.bib)
        -   formatar referências (.csl)
        -   Referências cruzadas (bookdown)
-   Prática: 
    -   Continuar relatório feito na aula 1: adicionar uma figura
        externa, um gráfico, uma tabela. Adicionar referências.
        Adicionar parâmetros. adicionar inline code;
-   Colocar uma fórmula no template de atividade

### Comentário @jtrecenti:

-   Comentar mathjax sem muito detalhe
-   Acho que seria legal comentar de referências cruzadas com
    bookdown::html_document2

## Aula 3: Compartilhamento e Customização

-   Dinâmica: essa aula mistura teoria e prática de cada tópico
-   Compartilhamento: (1h)
    -   Netlify Drop
    -   GitHub Pages (não será explicado GitHub, mas podemos deixar um
        link para o video da semana de data science com a instalação, e
        mostramos como deixar disponível a partir do projeto local).
-   Customização: (2h)
    -   Customização de relatórios em HTML: CSS básico para Rmarkdown
    -   Customização de relatórios em Word e PPT

### Comentário @jtrecenti:

-   Na parte de customização de relatórios word e ppt, seria legal
    fornecer alguns exemplos já prontos (e.g. documento em formato ABNT,
    apresentação com logo da empresa)

-   buscar um exemplo legal de pptx de documento para usar no reference

## Aula 4: Extensões

-   Dinâmica: definição e exemplo para cada pacote
-   Criar rmd a partir de um template: usando outros pacotes
    -   Apresentações impressionantes: O pacote {xaringan}
    -   Conteúdos extensos: O pacote {pagedown}
    -   Artigos e relatórios científicos: O pacote {rticles}

### Comentário @jtrecenti:

-   Talvez um slide por extensão mais conhecida: flexdashboard,
    bookdown, quarto, rticles, learnr, ...
-   A parte do rticles pode ser bem curta na minha opinião (um dos
    slides acima), focando em xaringan+pagedown ou alguma coisa pedida
    pela turma
