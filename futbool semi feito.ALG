Algoritmo "FUTEBOL TESTE"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Alcemar Pothin
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : trabalho em grupo Futbol
// Data atual  : 21/10/2022
Var
// Seção de Declarações das variáveis
 ent : caractere

 vi : vetor [ 1..10 ] de inteiro

 tm : vetor [ 1..10 ] de caractere

 gls : vetor [ 1..10 ] de inteiro

 pnt : vetor [ 1..10 ] de inteiro

 i , tp : inteiro


Inicio
// Vetor dos nomes
 tm [ 1 ] <- " Palmeiras      "
 tm [ 2 ] <- " internacional  "
 tm [ 3 ] <- " Flamengo       "
 tm [ 4 ] <- " Flurminense    "
 tm [ 5 ] <- " Corinthians    "
 tm [ 6 ] <- " Athletico-PR   "
 tm [ 7 ] <- " Atlético-MG    "
 tm [ 8 ] <- " America-MG     "
 tm [ 9 ] <- " Fortaleza      "
 tm [ 10 ] <- " São Paulo      "



 //===============================================================================

   para tp de 1 ate 10 faca

    para i de 1 ate 10 faca
      se i = tp entao
          i <- i + 1
      fimse
        aleatorio on
        aleatorio 1,6

       se i = 11 entao

       senao
            leia ( gls [ tp ] )
            leia ( gls [ i ] )

              se gls [ tp ] > gls [ i ] entao
                 gls [ tp ] <- gls [ tp ] + 1
                 pnt [ tp ] <- pnt [ tp ] + 3
                 vi [ tp ] <- vi [ tp ] + 1
                 escreval ( tm [ tp ] , "ganhou ")
              senao
                   se gls [ tp ] = gls [ i ] entao
                     gls [ tp ] <- gls [ tp ] + 1
                     pnt [ tp ] <- pnt [ tp ] + 3
                     vi [ tp ] <- vi [ tp ] + 1
                     gls [ i ] <- gls [ i ] + 1
                     pnt [ i ] <- pnt [ i ] + 3
                     vi [ i ] <- vi [ i ] + 1
                     escreval ( tm [ tp ] , " e " , tm [ i ] , "empataram " )


                   senao
                        gls [ i ] <- gls [ i ] + 1
                        pnt [ i ] <- pnt [ i ] + 3
                        vi [ i ] <- vi [ i ] + 1
                        escreval (  tm [ i ] , " ganhou ")
                   fimse
              fimse

       fimse
    fimpara

   fimpara

 para i de 1 ate 10 faca
     escreval ( tm [ i ] , gls [ i ] , vi [ i ], pnt [i] ) // tabela das pontuações pós jogo
 fimpara

   para tp de 1 ate 10 faca
     se i = tp entao
        i <- i + 1
     fimse
     
     se i = 11 entao
     
     senao
     
     fimse
    para i de 1 ate 10 faca
        se pnt [ i ] > pnt [ tp ] entao
          escreval ( pnt [ i ] )
        fimse
    fimpara
   fimpara
Fimalgoritmo