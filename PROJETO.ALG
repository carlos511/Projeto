Algoritmo "Projeto"
// Disciplina  : LPOO
// Professor(a): Aldo Henrique
// Descrição   : Um Aplicativo em Portugol que possui um MENU.
// Autor(a)    : Carlos Henrique Aguiar de Oliveira
// Data atual  : 20/04/2018
Var
soma, subtracao, Qpessoas, idade,midade, QM, QF :inteiro
Ncasos, n1, n2, y, i, posicao, digitos :inteiro
divisao, gidade, mediaM, mediaF, conv, res, x :real
opcao, sexo, B, Z :caracter
Inicio
repita                           //Um laço de repetição para o fim de cada operação
Escreval ("1.Soma")
Escreval ("2.Subtração")
Escreval ("3.Divisão")
Escreval("4.Faixa Etária")            //Exibição do MENU
Escreval ("5.Números primos")
Escreval ("6.Mudança de Base")
Escreval("7.Sair")

Escreval ("Escolha a opção")
Leia (opcao)                  //Usuário entra com a opção
Escolha (opcao)               //Verificação da escolha


caso "1"
Escreval ("Digite os 2 números para executar a soma")
Leia (n1)                     //Usuário entra com o primeiro número
Leia (n2)                     //Usuário entra com o segundo número
soma<- n1+n2                  //A variável soma recebe os valores e executa a soma
Escreval ("O resultado da soma é:", soma)


caso "2"
Escreval ("Digite os 2 números para executar a subtração")
Leia (n1)                     //Usuário entra com o primeiro número
Leia (n2)                     //Usuário entra com o segundo número
subtracao<- n1-n2             //A variável subtracao recebe os valores e executa a subtração
Escreval ("O resultado da subtração é:", subtracao)


caso "3"
Escreval ("Digite os 2 números para executar a divisão")
Leia (n1)                     //Usuário entra com o primeiro número
Leia (n2)                     //Usuário entra com o segundo número
divisao<- n1/n2               //A variável divisao recebe os valores e executa a divisão
Escreval ("O resultado da divisão é:", divisao)


caso "4"
Escreval ("Digite a quantidade de pessoas")
Leia (Qpessoas)               //Usuário entra com a quantidade de pessoas
para i de 1 ate Qpessoas passo 1 faca  //Definimos que será verificado todas as pessoas de uma a uma
Escreval ("Digite a idade")
Leia (idade)                  //Usuário entra com a idade da pessoa
Escreval ("Digite o sexo: m masculino e f para feminino")
Leia (sexo)                   //Usuário entra com o sexo da pessoa
se sexo = ("m") entao         //Verificamos o sexo, que é masculino nessa condição
QM<- QM+1                     //Efetuamos a soma de todas as pessoas do sexo masculino
mediaM<- mediaM+idade         //Calcula a média de idade das pessoas do sexo masculino através da variável mediaM
senao
se sexo = ("f") entao         //Verificamos o sexo, que é feminino nessa condição
QF<- QF+1                     //Efetuamos a soma de todas as pessoas do sexo feminino
mediaF<- mediaF+idade         //Calcula a média de idade das pessoas do sexo feminino através da variavel mediaF
fimse
fimse
fimpara
gidade<- (mediaM+mediaF) / Qpessoas  //Soma as pessoas do sexo m e f para definir a media geral da idade das pessoas guardando na variável gidade
mediaM<- mediaM/QM            //Variável mediaM recebe a idade total das pessoas do sexo masculino e divide pela as pessoas do sexo masculino
mediaF<- mediaF/QF            //Variável mediaM recebe a idade total das pessoas do sexo feminino e divide pela as pessoas do sexo feminino
Escreval ("A média de idade é:",gidade)
Escreval ("A média de idade do sexo masculino é:", mediaM)
Escreval ("A média de idade do sexo feminino é:", mediaF)


caso "5"
escreval ("Digite um numero")
Leia (n1)                     //Usuário entra com o número
para n2 de 1 ate n1 passo 1 faca  //define que todos os números que comtém no número digitado serão verificados
y<- 0                         //A variável y recebe o valor 0
para i de 1 ate n2 faca       //Define que todos os números serão verificados
se n2 mod i = 0 entao         //Verifica se mod (o resto da divisão) do número verificado é igual a 0
y<- y+1                       //A variável y, recebe ela mesma mais 1 para verificar o número primo
fimse
fimpara
se y=2 entao                  //Quando y for igual a 2 entra em uma condição
soma<- soma+n2                //Utiliza a variável soma para somar os números primos
fimse
fimpara
Escreval ("A soma dos números primos é:", soma)


caso "6"
Escreval ("Entre com a quantidade de casos:")
Leia (Ncasos)                 //Usuário entra com a quantidade de casos que quer testar
para i de 1 ate Ncasos passo 1 faca   //Definimos que será verificado caso por caso através do número digitado
Escreval ("Para converter de decimal p/ binário digite D")
Escreval ("Para converter de binário p/ decimal digite B")
Leia (opcao)                  //Usuário entra com a opção para a conversão
escolha (opcao)               //Criamos uma escolha de opção, pois temos dois casos que pode ser escolhido pelo usuário

caso ("d")
Escreval ("Digite o valor decimal:")
Leia (n1)                     //Usuário entra com o número decimal, após ter escolhido esse caso

i<- n1                        //A variável i guarda o valor digitado
enquanto n1 >0 faca           //Criamos uma condição onde o valor digitado teve ser maior que 0
se n1 mod 2 = 0 entao         //Verifica se mod 2 (o resto da divisão) do número verificado é igual a 0 criando uma condição
B<- "0" + B                   //Uma variável do tipo caracter ira receber o 0 e somar mais ela mesma quando condição verdadeira
senao
B<- "1" + B                   //Uma variável do tipo caracter ira receber o 1 e somar mais ela mesma quando condição falsa
fimse
n1<- n1 div 2                 //A variável n1 recebe o resultado da divisão (div) dividindo por 2
fimenquanto
Escreval ("A representação do número",i,  " em binário é:")
Escreval (" ",B)

caso ("b")
Escreval ("Digite o número binário:")
Leia (n1)                     //Usuário entra com o número binário, após ter escolhido esse caso
conv<- 0                      //A variável conv recebe o valor 0
x<- 1                         //A variável x recebe o valor 1
posicao<- 1                   //A variável posicao recebe 1
enquanto n1>0 faca            //Criamos uma condição onde o valor digitado teve ser maior que 0
res<- n1 mod 10               //A variável res guardará o mod 10 do numero digitado
n1<- n1 div 10                //A variável n1 recebe o resultado da divisão (div) dividindo por 10
digitos<- digitos+1           //A variável digito é criada para verificar quantos digitos possui o número digitado
x<- posicao*res               //A Variável x recebe o valor da posição vezes o resto do mod 10 do número
posicao<- posicao*2           //A variável posicao ser multiplicada por 2 criando uma potencialização para a posição do digito
conv<- conv+x                 //A variável conv recebe ela mais x concluindo a conversão do número
fimenquanto
Escreval ("o número em decimal é:", conv)
outrocaso
fimescolha
fimpara


caso "7"
outrocaso
fimescolha
ate opcao = "7"               //O usuário poderá sair toda vez que retornar ao MENU digitando 7, fechando o laço de repetição
Fimalgoritmo