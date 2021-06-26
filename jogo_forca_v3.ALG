Algoritmo "Jogo da Forca"
// Disciplina   : [Lógica de Programação]
// Professor   : Godinho Quissico
// Descrição   : Jogo da Forca
// Autor(a)    : Mauro Pequenino e Elton Mirona
// Data atual  : 22-Jun-21
//usuario
tipo estrutura_jogadores = registro
   nome:caracter
   num_Victorias,num_Derrotas: inteiro
fimregistro

Var
   // Seção de Declarações das variáveis
   num_Aleatorio,num_Aleatorio_2,cmp,i,j,k,num_Tentativas,alternativa,num_Letras,erros, codigo_inicial, num_Jogadores,num_Partidas,jogar_novamente: inteiro
   palavra1,palavra2,palavra3,palavra4,palavra5,vector_Letra_Palavra: vetor[1..20] de caracter
   tema_Escolhido,palavra_Escolhida,letra,aux,tentativa_Perigosa,letra_errada:caracter
   acertou,jogo: logico
   jogadores: vetor[1..5] de estrutura_jogadores

procedimento ilustracao
inicio
   se erros = 0 entao
      escreval("====================")
      escreval("  ||               #")
      escreval("  ||               #")
      escreval("  ||               #")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("  || ")
      escreval("=====")
   senao
      se erros = 1 entao
         escreval("====================")
         escreval("  ||               #")
         escreval("  ||               #")
         escreval("  ||              _#_")
         escreval("  ||             /   \")
         escreval("  ||             \___/ ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("  || ")
         escreval("=====")
      senao
         se erros = 2 entao
            escreval("====================")
            escreval("  ||               #")
            escreval("  ||               #")
            escreval("  ||              _#_")
            escreval("  ||             /   \")
            escreval("  ||             \___/ ")
            escreval("  ||              / ")
            escreval("  ||             /  ")
            escreval("  ||            /    ")
            escreval("  ||                ")
            escreval("  ||                ")
            escreval("  || ")
            escreval("  || ")
            escreval("  || ")
            escreval("=====")

         senao
            se erros = 3 entao
               escreval("====================")
               escreval("  ||               #")
               escreval("  ||               #")
               escreval("  ||              _#_")
               escreval("  ||             /   \")
               escreval("  ||             \___/ ")
               escreval("  ||              /| ")
               escreval("  ||             / |  ")
               escreval("  ||            /  |")
               escreval("  ||               |")
               escreval("  ||               ")
               escreval("  || ")
               escreval("  || ")
               escreval("  || ")
               escreval("=====")
            senao
               se erros = 4 entao
                  escreval("====================")
                  escreval("  ||               #")
                  escreval("  ||               #")
                  escreval("  ||              _#_")
                  escreval("  ||             /   \")
                  escreval("  ||             \___/ ")
                  escreval("  ||              /|\")
                  escreval("  ||             / | \")
                  escreval("  ||            /  |  \")
                  escreval("  ||               |")
                  escreval("  ||                ")
                  escreval("  || ")
                  escreval("  || ")
                  escreval("  || ")
                  escreval("=====")
               senao
                  se erros = 5 entao
                     escreval("====================")
                     escreval("  ||               #")
                     escreval("  ||               #")
                     escreval("  ||              _#_")
                     escreval("  ||             /   \")
                     escreval("  ||             \___/ ")
                     escreval("  ||              /|\")
                     escreval("  ||             / | \")
                     escreval("  ||            /  |  \")
                     escreval("  ||               |   ")
                     escreval("  ||               |    ")
                     escreval("  ||              /     ")
                     escreval("  ||             /      ")
                     escreval("  || ")
                     escreval("  || ")
                     escreval("  || ")
                     escreval("=====")
                  senao
                     se erros = 6 entao
                        escreval("====================")
                        escreval("  ||               #")
                        escreval("  ||               #")
                        escreval("  ||               #")
                        escreval("  ||              _#_")
                        escreval("  ||             /   \")
                        escreval("  ||             \___/            GAME OVER!")
                        escreval("  ||              /|\")
                        escreval("  ||             / | \          Nao foi desta!")
                        escreval("  ||            /  |  \")
                        escreval("  ||               |   ")
                        escreval("  ||               |")
                        escreval("  ||              / \")
                        escreval("  ||             /   \")
                        escreval("  || ")
                        escreval("  || ")
                        escreval("  || ")
                        escreval("=====")
                        timer 3000 on
                        timer 0 off
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimprocedimento

procedimento ranking
//MOSTRAR RANKING
inicio
   escreval("==================================================================")
   escreval("=========================    RANKING     =========================")
   escreval("==================================================================")
   escreval
   escreval

   se num_Jogadores <> 0 entao
      escreval("      JOGADORES        |     VICTORIAS         |     DERROTAS   ")
      para j de 1 ate num_Jogadores faca
         escreval
         escreva(j," - ",jogadores[j].nome,"                        ",jogadores[j].num_Victorias,"                     ",jogadores[j].num_Derrotas)
         escreval
         escreval("------------------------------------------------------------")
      fimpara
   senao
      escreval("                          Sem resultados                       ")
   fimse
fimprocedimento

Inicio
   escreval("==================================================================")
   escreval("=======================     BEM VINDO     ========================")
   escreval("=======================        AO         ========================")
   escreval("=======================   JOGO DA FORCA   ========================")
   escreval("==================================================================")
   escreval
   escreval
   escreval("                           Vamos Jogar?")
   escreval
   escreval("[1] - Comecar o jogo")
   escreval("[2] - Ver Ranking")
   escreval("[0] - Sair")
   escreval
   leia(codigo_inicial)
   limpatela

   jogo <- verdadeiro

   //INICIA E REINICIA O JOGO
   enquanto jogo = verdadeiro faca

      escolha codigo_inicial
      caso 1

         //DADOS DOS JOGADORES
         escreva("Numero de participantes (Maximo 5 jogadores): ")
         leia(num_Jogadores)
         escreva("Numero de partidas: ")
         leia(num_Partidas)

         limpatela

         para j de 1 ate num_Jogadores faca
            escreva("Jogador:",j)
            escreval
            escreva("Insira o seu nome: ")
            leia(jogadores[j].nome)

            jogadores[j].nome <- maiusc(jogadores[j].nome)
            jogadores[j].num_Victorias <- 0
            jogadores[j].num_Derrotas <- 0
            escreval
         fimpara
         limpatela


         //DADOS DO JOGO
         para k de 1 ate num_Partidas faca
            para j de 1 ate num_Jogadores faca

               //GERAR TEMA
               num_Aleatorio <- randi(5)
               se num_Aleatorio = 0 entao
                  num_Aleatorio <- num_Aleatorio + 1

               fimse

               //GERAR PALAVRA
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
                  palavra5[8] <- "CLIPPERS"
                  palavra5[9] <- "FERROVIARIO"
                  palavra5[10] <- "LIVERPOOL"

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

               enquanto num_Tentativas < (cmp) faca
                  acertou <- falso
                  escreval("Partida: ",k," | Jogador ",j,": ",jogadores.nome[j])
                  escreval("--------------------------------------------------")

                  ilustracao // DESEENHAR BONECO

                  escreval
                  escreval("Tema: ",tema_Escolhido)
                  escreval("Letra Erradas: ",letra_errada)


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
                     escreval("Partida: ",k," | Jogador ",j,": ",jogadores.nome[j])
                     escreval("--------------------------------------------------")

                     ilustracao // DESENHAR BONECO

                     //UMA LETRA DE CADA VEZ
                     escreval
                     escreval("Tema: ",tema_Escolhido)
                     escreval("Letra Erradas: ",letra_errada)

                     para i de 1 ate cmp faca
                        escreva(vector_Letra_Palavra[i])
                     fimpara

                     escreval
                     escreval
                     escreva("Tente uma letra: ")
                     leia(letra)
                     letra <- maiusc(letra)

                     //LETRAS JA INSERIDAS
                     para i de 1 ate cmp faca
                        se (letra = vector_Letra_Palavra[i]) ou (letra_errada = letra) entao
                           escreval
                           escreval("Voce ja inseriu esta letra")
                           escreval
                           timer 1000 on
                           timer 0 off
                        fimse
                        interrompa
                     fimpara

                     //LETRAS CERTAS
                     para i de 1 ate cmp faca
                        aux <- copia(palavra_Escolhida,i,1)
                        se aux = letra entao
                           num_letras <- num_letras + 1
                           acertou <- verdadeiro
                           vector_Letra_Palavra[i] <- letra
                        fimse
                     fimpara

                     //LETRAS ERRADAS
                     se (acertou = falso) e (letra_errada <> letra) entao
                        erros <- erros + 1
                        letra_errada <- letra_errada + letra
                        escreva(letra_errada)
                     fimse

                     se erros = 6 entao
                        limpatela
                        timer 1000 on
                        timer 0 off

                        ilustracao // DESENHA BONECO

                        jogadores[j].num_Derrotas <- jogadores[j].num_Derrotas + 1
                        escreval("Voce perdeu, nao foi desta")
                        timer 2000 on
                        timer 0 off
                        interrompa
                        //TERMINA O JOGO
                     fimse


                     //TERMINAR O JOGO QUANDO A PALAVRA ESTIVER COMPLETA
                     se num_Letras = cmp  entao
                        limpatela
                        jogadores[j].num_Victorias <- jogadores[j].num_Victorias + 1
                        escreval("Parabens voce venceu o jogo!")
                        timer 2000 on
                        timer 0 off
                        interrompa
                        //TERMINA O JOGO
                     fimse

                     limpatela

                  caso 2
                     escreval("Partida: ",k," | Jogador ",j,": ",jogadores.nome[j])
                     escreval("--------------------------------------------------")

                     ilustracao // DESENHA BONECO

                     //TENTATiVA PERIGOSA
                     escreval("Tema: ",tema_Escolhido)
                     escreval("Letra Erradas: ",letra_errada)
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
                        jogadores[j].num_Victorias <- jogadores[j].num_Victorias + 1
                        escreval("Parabens voce venceu o jogo!")
                        timer 2000 on
                        timer 0 off
                        interrompa
                     senao
                        limpatela
                        erros <- 6
                        ilustracao // DESENHA BONCECO
                        jogadores[j].num_Derrotas <- jogadores[j].num_Derrotas + 1
                        interrompa
                     fimse
                     limpatela
                  outrocaso
                     escreva("Comando invalido")
                     timer 1000 on
                     timer 0 off
                  fimescolha
                  timer 2000 on
                  timer 0 off
               fimenquanto

               //LIMPAR DADOS
               erros <- 0
               cmp <- 0
               num_tentativas <- 0
               letra_errada <- ""
            fimpara
         fimpara

         //MOSTRAR RANKING
         ranking

      caso 2
         //MOSTRAR RANKING
         ranking
      caso 0
fimalgoritmo

outrocaso
   escreva ("Comando invalido")
fimescolha

timer 5000 on
timer 0 off
limpatela
escreval("==================================================================")
escreval("=======================     BEM VINDO     ========================")
escreval("=======================        AO         ========================")
escreval("=======================   JOGO DA FORCA   ========================")
escreval("==================================================================")
escreval
escreval
escreval("                           Vamos Jogar?")
escreval
escreval("[1] - Comecar o jogo")
escreval("[2] - Ver Ranking")
escreval("[0] - Sair")
escreval
leia(codigo_inicial)
limpatela
fimenquanto

Fimalgoritmo