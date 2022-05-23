## Aula 1: Introdução ao R Markdown
- Introdução ao curso (+/- 30 min)
- Teoria: (1h20)
    - Pacote R Markdown e exemplos do que conseguimos fazer com extensões
    - Markdown
    - Adicionar conteúdo com código: chunks, e inline code.
    - Outputs básicos: HTML, PDF, Word
    - Relatórios simples e efetivos: o pacote {prettydoc}

- Prática: (1h final)
    - Criar um relatório do 0; alterar informações básicas no YAML; mostrar alterando o conteúdo básico com markdown; adicionar chunk com código; adicionar inline code; knit para os três outputs básicos e prettydoc
    
### Comentário @jtrecenti:

- Acho que já temos isso feito, mas nos slides vale comentar em quais situações do dia-a-dia vale a pena usar RMarkdown (com exemplos):
   - listas de exercícios da escola / faculdade
   - no trabalho: enviar relatórios periódicos por e-mail
   - apresentações técnicas
   - dashboard rápido
   - site com portfolio
   - CV


## Aula 2: Continuação sobre R Markdown

- Teoria: (1h25)
    - Opções de chunk
    - Adicionar figuras e gráficos
    - Adicionar tabelas
    - Adicionar referências
    - RMarkdown com parâmetros

- Prática: (1h25)
    - Continuar relatório feito na aula 1: adicionar uma figura externa, um gráfico, uma tabela. Adicionar referências. Adicionar parâmetros. Se der tempo, mostrar como gerar o relatório com rmarkdown::render(), e se der tempo também, mostrar o como usar render() + parâmetros + purrr (exemplo avançado).

### Comentário @jtrecenti:
- Comentar mathjax sem muito detalhe
- Acho que seria legal comentar de referências cruzadas com bookdown::html_document2

## Aula 3: Compartilhamento e Customização
- Dinâmica: essa aula mistura teoria e prática de cada tópico
- Compartilhamento: (1h)
    - Netlify Drop
    - GitHub Pages (não será explicado GitHub, mas podemos deixar um link para o video da semana de data science com a instalação, e mostramos como deixar disponível a partir do projeto local).

- Customização:  (2h)
   - Customização de relatórios em HTML: CSS básico para Rmarkdown
   - Customização de relatórios em Word e PPT

### Comentário @jtrecenti:
- Na parte de customização de relatórios word e ppt, seria legal fornecer alguns exemplos já prontos (e.g. documento em formato ABNT, apresentação com logo da empresa)

## Aula 4: Extensões 
- Dinâmica: definição e exemplo para cada pacote
- Criar rmd a partir de um template: usando outros pacotes
   - Apresentações impressionantes: O pacote {xaringan}
   - Conteúdos extensos: O pacote {pagedown}
   - Artigos e relatórios científicos: O pacote {rticles}

### Comentário @jtrecenti:
- Talvez um slide por extensão mais conhecida: flexdashboard, bookdown, quarto, rticles, learnr, ...
- A parte do rticles pode ser bem curta na minha opinião (um dos slides acima), focando em xaringan+pagedown ou alguma coisa pedida pela turma
