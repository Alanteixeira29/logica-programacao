Algoritmo "vetor"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Alcemar Pothin 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Alan Teixeira
// Data atual  : 17/10/2022
Var
// Seção de Declarações das variáveis 
produto : vetor[1..10] de caractere
estoque : vetor[1..10] de inteiro
preco : vetor[1..10] de real
x : inteiro
total : real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para x de 1 ate 10 faca

 escreval ("Informe oprodutos:")
 leia (produto[x])
 
 escreval ("Informe o estoque: ")
 leia (estoque[x])
 
 escreval ("informe o preço: ")
 leia (preco[x])
 
limpatela
fimpara

escreval ("Seu inventário de produtos é o seguinte:")
escreval (" ")

para x de 1 ate 10 faca
  escreval ("Produto ", produto[x],"| Estoque ", estoque[x],"| Preço",preco[x])
fimpara

Fimalgoritmo