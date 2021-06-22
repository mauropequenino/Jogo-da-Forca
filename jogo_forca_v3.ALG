Algoritmo "Jodo da forca"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22-Jun-21
Var
   // Seção de Declarações das variáveis
   num_Aleatorio,num_Aleatorio_2,cmp,i,num_Tentativas,alternativa,num_Letras: inteiro
   palavra1,palavra2,palavra3,palavra4,palavra5,vector_Letra_Palavra: vetor[1..20] de caracter
   tema_Escolhido,palavra_Escolhida,letra,aux,tentativa_Perigosa:caracter
   acertou: logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   num_Aleatorio <- randi(5)
   se num_Aleatorio = 0 entao
      num_Aleatorio <- num_Aleatorio + 1

   fimse

   num_Aleatorio_2 <- randi(10)
   se num_Aleatorio_2 = 0 entao
      num_Aleatorio_2 <- num_Aleatorio_2 + 1
   fimse

   escolha num_Aleatorio
   caso 1
      tema_Escolhido <- "MUSICA"
      palavra1[1] <- "ADELE"
      palavra1[2] <- "HERNANI"
      palavra1[3] <- "AZAGAIA"
      palavra1[4] <- "MINGAS"
      palavra1[5] <- "NEYMA"
      palavra1[6] <- "COLDPLAY"
      palavra1[7] <- "BEYONCE"
      palavra1[8] <- "WAZIMBO"
      palavra1[9] <- "LILOCA"
      palavra1[10] <- "ALCIONE"


      palavra_Escolhida <- palavra1[num_Aleatorio_2]

   caso 2
      tema_Escolhido <- "FILMES"
      palavra2[1] <- "ROBOCOP"
      palavra2[2] <- "AVENGERS"
      palavra2[3] <- "AVATAR"
      palavra2[4] <- "EXTERMINADOR"
      palavra2[5] <- "TITANIC"
      palavra2[6] <- "POCAHONTAS"
      palavra2[7] <- "SOUL"
      palavra2[8] <- "LUCA"
      palavra2[9] <- "POMPEI"
      palavra2[10] <- "XMEN"

      palavra_Escolhida <- palavra2[num_Aleatorio_2]

   caso 3
      tema_Escolhido <- "PERSONAGENS"
      palavra3[1] <- "LARACROFT"
      Palavra3[2] <- "DRACULA"
      Palavra3[3] <- "BATMAN"
      Palavra3[4] <- "THOR"
      Palavra3[5]<- "JOKER"
      Palavra3[6]<- "SUPERMAN"
      palavra3[7] <- "SIMBA"
      palavra3[8] <- "MUFASA"
      palavra3[9] <- "TARZAN"
      palavra3[10] <- "GREEN"

      palavra_Escolhida <- palavra3[num_Aleatorio_2]


   caso 4
      tema_Escolhido <-"GEOGRAFIA"
      palavra4[1] <- "MOCAMBIQUE"
      palavra4[2] <- "BEIRA"
      palavra4[3] <- "ESTOCOLMO"
      palavra4[4] <- "NAMPULA"
      palavra4[5] <- "LISBOA"
      palavra4[6] <- "ANTANANARIVO"
      palavra4[7] <- "BANGLADESH"
      palavra4[8] <- "MAPUTO"
      palavra4[9] <- "BAZARUTO"
      palavra4[10] <- "PRETORIA"


      palavra_Escolhida <- palavra4[num_Aleatorio_2]


   caso 5
      tema_Escolhido <-"EQUIPAS DE DESPORTO"
      palavra5[1] <- "BENFICA"
      palavra5[2] <- "BARCELONA"
      palavra5[3] <- "CHELSEA"
      palavra5[4] <- "LAKERS"
      palavra5[5] <- "DESPORTIVO"
      palavra5[6] <- "MAXAQUENE"
      palavra5[7] <- "ARSENAL"
      palavra5[8] <- "LAKERS"
      palavra5[9] <- "FERROVIARIO"
      palavra5[10] <- "PSG"

      palavra_Escolhida <- palavra5[num_Aleatorio_2]

   outrocaso
      escreva("ERRO!")

   fimescolha

   //GERAR TRACOS
   cmp <- compr(palavra_Escolhida)

   para i de 1 ate cmp faca
      vector_Letra_Palavra[i] <- ("_ ")
   fimpara

   num_Tentativas <- 1

   enquanto num_Tentativas < (cmp+6) faca
      escreval("TEMA: ",tema_Escolhido)
      escreval("PALAVRA: ",palavra_Escolhida)
      escreval

      para i de 1 ate cmp faca
         escreva(vector_Letra_Palavra[i])
      fimpara

      escreval
      escreval
      escreval("[1] - Inserir uma letra ")
      escreval("[2] - Tentativa perigorsa ")
      escreval
      leia(alternativa)

      limpatela
      escolha alternativa
      caso 1
      //UMA LETRA DE CADA VEZ
         escreval("TEMA: ",tema_Escolhido)
         escreval("PALAVRA: ",palavra_Escolhida)
         escreval

         para i de 1 ate cmp faca
            escreva(vector_Letra_Palavra[i])
         fimpara

         escreval
         escreval
         escreval("Tente uma letra: ")
         leia(letra)
         letra <- maiusc(letra)

         //LETRAS JA INSERIDAS
         para i de 1 ate cmp faca
            se letra = vector_Letra_Palavra[i] entao
               escreval
               escreval("Voce ja inseriu esta letra")
               escreval
               timer 2000 on
               timer 0 off
            fimse
         fimpara

         para i de 1 ate cmp faca
            aux <- copia(palavra_Escolhida,i,1)
            se aux = letra entao
               num_letras <- num_letras + 1
               vector_Letra_Palavra[i] <- letra
            fimse
         fimpara
         
         //TERMINAR O JOGO QUNADO A PALAVRA FOR COMPLETADA
         se num_Letras = cmp  entao
              limpatela
              escreval("Parabens voce venceu o jogo!")
              fimalgoritmo
         fimse
      caso 2
           //TENTAITVA PERIGOSA
         escreval("TEMA: ",tema_Escolhido)
         escreval("PALAVRA: ",palavra_Escolhida)
         escreval

         para i de 1 ate cmp faca
            escreva(vector_Letra_Palavra[i])
         fimpara

         escreval
         escreval
         escreval("Tente uma palavra: ")
         leia(tentativa_Perigosa)

         tentativa_Perigosa <- maiusc(tentativa_Perigosa)

         //TERMINAR O JOGO
         se tentativa_Perigosa = palavra_Escolhida entao
            limpatela
            escreval("Parabens voce venceu o jogo!")
            fimalgoritmo
         senao
              limpatela
              escreval("Voce perdeu, nao foi desta")
              fimalgoritmo
         fimse

outrocaso
   escreva("ERRO 404")
   timer 2000 on
   timer 0 off

fimescolha

limpatela


fimenquanto

Fimalgoritmo