Algoritmo "BatalhaNavalfunc"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Alcemar Pothin 
// Descrição   : Jogo de Batalha Naval

// Autor(a)    : Alan, Antoniella, Luan, Deiws, Wellington
// Data atual  : 18/10/2022
Var
// Seção de Declarações das variáveis 
x, y, bonus, navios, tiros, bombas, agua, col,ponto, vida : inteiro
BN : vetor[1..10,1..10] de caractere
enter : caractere
a, lin : caractere
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
tiros <- 10
navios <- 0
bombas <- 0
bonus <- 2
ponto <- 0
vida <- 3
escreva ("Para Iniciar pressione Enter")
leia (enter)
limpatela

repita

      para x de 1 ate 10 faca
          para y de 1 ate 10 faca
            BN [x , y] <- "~~~~~"

          fimpara
      fimpara

      repita
          aleatorio 1 , 10  //aleatorio da bomba
              leia (x)
              leia (y)
              limpatela
              se (BN[x, y] = "~~~~~") entao
                BN[x, y]<- "BOMBA"
              senao
                bombas <- bombas - 1
              fimse
          aleatorio off
          bombas <- bombas + 1
      ate bombas > 11
      repita
          aleatorio 1, 10 //aleatorio Navio
              leia (x)
              leia (y)
              limpatela
              se (BN[x, y] = "~~~~~") entao
                 BN[x, y] <- "NAVIO"
              senao
                 navios <- navios - 1
              fimse
          aleatorio off
          navios <- navios + 1
      ate navios > 9

      repita
          aleatorio 1, 10 //aleatorio Bônus
              leia (x)
              leia (y)
              limpatela
              se (BN[x,y] = "~~~~~") entao
                 BN[x, y] <- "BONUS"
              senao
                 bonus <- bonus - 1
              fimse
          aleatorio off
          bonus <- bonus + 1
      ate bonus > 2

      limpatela

      repita

      escreval ("                                                     Vidas: ", vida)
      escreval ("                                                     Tiros: ", tiros)
            escreva ("Em qual linha você quer atirar? (1 a 10)")
            leia (x)

            escreva ("Em qual coluna vc quer atirar? (1 a 10)")
            leia (y)
            limpatela
         escolha BN[x, y]
                 caso "~~~~~"
                      escreval ("Tiro Desperdiçado. :(")
                      se (tiros = "~~~~~") entao
                         tiros <- tiros - 1
                      fimse
                 caso "BONUS"
                      escreval ("Jóia, você conseguiu um BÔNUS!")
                      se (tiros = "BONUS") entao
                         tiros <- tiros + 1
                         ponto <- ponto + 5
                         vida <- vida + 1
                      fimse
                 caso "NAVIO"
                      escreval ("Felicitações, você acertou um NAVIO!")
                      se (tiros = "NAVIO") entao
                         tiros <- tiros + 5
                         ponto <- ponto + 10
                      fimse
                 caso "BOMBA"
                      escreval ("Vish, se lascou, menos uma vida")
                      vida <- vida - 1
                      tiros <- tiros - 1
                      se (bombas = 3) entao
                         escreval ("~~~~~~~~Game Over~~~~~~~~")
                         tiros <- 0
                         ponto <- ponto - 1
                         vida <- 0
                      fimse
                 outrocaso
                      escreval ("Error 404")
         fimescolha
      ate ((tiros <= 0) ou (vida <= 0))

      escreval ("Pressione enter para ver score")
      leia (col)

      limpatela

      limpatela
      escreval (" ")

      para x de 1 ate 10 faca
          para y de 1 ate 10 faca
            escreva (BN [x , y], " ")

          fimpara
          escreval (BN [x , y], " ")
      fimpara

      se (vida > 0) entao
       escreval ("Score de: ", ponto, " pontos.")
       escreval (" ")
       escreval ("Lhe sobraram ", vida, " vidas.")
      senao
       escreval (" ")
       escreval ("Sua vidas acabaram, score de ", ponto," pontos.")
      fimse
      
      escreval (" ")
      escreval (" ")
      escreval ("Deseja recomeçar? S/N")
      leia (lin)
      
tiros <- 10
vida <- 3
ponto <- 0
ate ((lin = "N")ou(lin = "n"))

Fimalgoritmo