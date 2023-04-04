# Caso não tenha lido esses capítulos,
# leia antes de fazer os exercícios:

# https://livro.curso-r.com/9-relatorios.html
# https://livro.curso-r.com/9-1-markdown.html
# https://livro.curso-r.com/9-2-r-markdown.html


# Vamos criar uma apresentação usando o Quarto!
# Separamos em várias etapas para experimentar os conceitos
# mostrados no curso.
# Caso alguma etapa dê errado, anote e avise a gente sobre a dúvida,
# mas tente continuar fazendo os outros exercícios possíveis.
# A partir do exercício 6, cada exercício é algo diferente para
# experimentar adicionar na apresentação.


# 1. O código abaixo cria uma pasta chamada exercicios_resolucao,
# e outra pasta dentro dela chamada apresenacao. É lá que vamos organizar
# os materiais deste exercício!

fs::dir_create("exercicios_resolucao/apresentacao")

# 2. Crie também as pastas para adicionar as imagens,
#  as bibliotecas e arquivos de folhas de estilo (css):

fs::dir_create("exercicios_resolucao/apresentacao/img")

fs::dir_create("exercicios_resolucao/apresentacao/libs")

fs::dir_create("exercicios_resolucao/apresentacao/css")

# 3. Crie um arquivo Quarto com o template de apresentação

# 4. Aperte `Knit` e veja o resultado. Faça isso sempre, após fazer cada uma
# das etapas abaixo. Veja como ficou o resultado, e caso ocorrer um erro,
# será mais fácil saber onde é necessário arrumar :)

# 5. Agora vamos alterar os metadados da apresentação:
# a. Adicione um título
# b. Adicione um subtítulo
# c. Adicione seu nome no campo de autoria
# d. Adicione a data

# 6. Mude o estilo da sua apresentação!

# 7. Adicione um slide e adicione um parágrafo que esteja marcado com markdown
# Utilize negrito, itálico, links, texto formatado como código, etc.
# Caso queira relembrar, leia este material:
# https://livro.curso-r.com/9-1-markdown.html

# 8. Adicione uma tabela a partir de um data.frame.
# (Você pode usar `mtcars`, por exemplo).
# Utilize o pacote a sua escolha para formatar a tabela.

# 9. Adicione duas imagens na sua apresentação:
# Uma que esteja salva na pasta img que criamos,
# e outra que esteja na internet, utilizando a URL da imagem.

# 10. Inclua um chunk de código em que a variável x recebe o valor 4,
# a variável y recebe o valor 6 e calcula a soma de x e y.

# 11. (Opcional) Utilize alguma (ou mais de uma) mudança de apresentação
# https://quarto.org/docs/presentations/revealjs/presenting.html

# 12. Deixe sua apresentação online e envie o link!
# Dica: use o quarto pub
