Algoritmo "Projeto"
// Disciplina  : LPOO
// Professor(a): Aldo Henrique
// Descri��o   : Um Aplicativo em Portugol que possui um MENU.
// Autor(a)    : Carlos Henrique Aguiar de Oliveira
// Data atual  : 20/04/2018
Var
soma, subtracao, Qpessoas, idade,midade, QM, QF :inteiro
Ncasos, n1, n2, y, i, posicao, digitos :inteiro
divisao, gidade, mediaM, mediaF, conv, res, x :real
opcao, sexo, B, Z :caracter
Inicio
repita                           //Um la�o de repeti��o para o fim de cada opera��o
Escreval ("1.Soma")
Escreval ("2.Subtra��o")
Escreval ("3.Divis�o")
Escreval("4.Faixa Et�ria")            //Exibi��o do MENU
Escreval ("5.N�meros primos")
Escreval ("6.Mudan�a de Base")
Escreval("7.Sair")

Escreval ("Escolha a op��o")
Leia (opcao)                  //Usu�rio entra com a op��o
Escolha (opcao)               //Verifica��o da escolha


caso "1"
Escreval ("Digite os 2 n�meros para executar a soma")
Leia (n1)                     //Usu�rio entra com o primeiro n�mero
Leia (n2)                     //Usu�rio entra com o segundo n�mero
soma<- n1+n2                  //A vari�vel soma recebe os valores e executa a soma
Escreval ("O resultado da soma �:", soma)


caso "2"
Escreval ("Digite os 2 n�meros para executar a subtra��o")
Leia (n1)                     //Usu�rio entra com o primeiro n�mero
Leia (n2)                     //Usu�rio entra com o segundo n�mero
subtracao<- n1-n2             //A vari�vel subtracao recebe os valores e executa a subtra��o
Escreval ("O resultado da subtra��o �:", subtracao)


caso "3"
Escreval ("Digite os 2 n�meros para executar a divis�o")
Leia (n1)                     //Usu�rio entra com o primeiro n�mero
Leia (n2)                     //Usu�rio entra com o segundo n�mero
divisao<- n1/n2               //A vari�vel divisao recebe os valores e executa a divis�o
Escreval ("O resultado da divis�o �:", divisao)


caso "4"
Escreval ("Digite a quantidade de pessoas")
Leia (Qpessoas)               //Usu�rio entra com a quantidade de pessoas
para i de 1 ate Qpessoas passo 1 faca  //Definimos que ser� verificado todas as pessoas de uma a uma
Escreval ("Digite a idade")
Leia (idade)                  //Usu�rio entra com a idade da pessoa
Escreval ("Digite o sexo: m masculino e f para feminino")
Leia (sexo)                   //Usu�rio entra com o sexo da pessoa
se sexo = ("m") entao         //Verificamos o sexo, que � masculino nessa condi��o
QM<- QM+1                     //Efetuamos a soma de todas as pessoas do sexo masculino
mediaM<- mediaM+idade         //Calcula a m�dia de idade das pessoas do sexo masculino atrav�s da vari�vel mediaM
senao
se sexo = ("f") entao         //Verificamos o sexo, que � feminino nessa condi��o
QF<- QF+1                     //Efetuamos a soma de todas as pessoas do sexo feminino
mediaF<- mediaF+idade         //Calcula a m�dia de idade das pessoas do sexo feminino atrav�s da variavel mediaF
fimse
fimse
fimpara
gidade<- (mediaM+mediaF) / Qpessoas  //Soma as pessoas do sexo m e f para definir a media geral da idade das pessoas guardando na vari�vel gidade
mediaM<- mediaM/QM            //Vari�vel mediaM recebe a idade total das pessoas do sexo masculino e divide pela as pessoas do sexo masculino
mediaF<- mediaF/QF            //Vari�vel mediaM recebe a idade total das pessoas do sexo feminino e divide pela as pessoas do sexo feminino
Escreval ("A m�dia de idade �:",gidade)
Escreval ("A m�dia de idade do sexo masculino �:", mediaM)
Escreval ("A m�dia de idade do sexo feminino �:", mediaF)


caso "5"
escreval ("Digite um numero")
Leia (n1)                     //Usu�rio entra com o n�mero
para n2 de 1 ate n1 passo 1 faca  //define que todos os n�meros que comt�m no n�mero digitado ser�o verificados
y<- 0                         //A vari�vel y recebe o valor 0
para i de 1 ate n2 faca       //Define que todos os n�meros ser�o verificados
se n2 mod i = 0 entao         //Verifica se mod (o resto da divis�o) do n�mero verificado � igual a 0
y<- y+1                       //A vari�vel y, recebe ela mesma mais 1 para verificar o n�mero primo
fimse
fimpara
se y=2 entao                  //Quando y for igual a 2 entra em uma condi��o
soma<- soma+n2                //Utiliza a vari�vel soma para somar os n�meros primos
fimse
fimpara
Escreval ("A soma dos n�meros primos �:", soma)


caso "6"
Escreval ("Entre com a quantidade de casos:")
Leia (Ncasos)                 //Usu�rio entra com a quantidade de casos que quer testar
para i de 1 ate Ncasos passo 1 faca   //Definimos que ser� verificado caso por caso atrav�s do n�mero digitado
Escreval ("Para converter de decimal p/ bin�rio digite D")
Escreval ("Para converter de bin�rio p/ decimal digite B")
Leia (opcao)                  //Usu�rio entra com a op��o para a convers�o
escolha (opcao)               //Criamos uma escolha de op��o, pois temos dois casos que pode ser escolhido pelo usu�rio

caso ("d")
Escreval ("Digite o valor decimal:")
Leia (n1)                     //Usu�rio entra com o n�mero decimal, ap�s ter escolhido esse caso

i<- n1                        //A vari�vel i guarda o valor digitado
enquanto n1 >0 faca           //Criamos uma condi��o onde o valor digitado teve ser maior que 0
se n1 mod 2 = 0 entao         //Verifica se mod 2 (o resto da divis�o) do n�mero verificado � igual a 0 criando uma condi��o
B<- "0" + B                   //Uma vari�vel do tipo caracter ira receber o 0 e somar mais ela mesma quando condi��o verdadeira
senao
B<- "1" + B                   //Uma vari�vel do tipo caracter ira receber o 1 e somar mais ela mesma quando condi��o falsa
fimse
n1<- n1 div 2                 //A vari�vel n1 recebe o resultado da divis�o (div) dividindo por 2
fimenquanto
Escreval ("A representa��o do n�mero",i,  " em bin�rio �:")
Escreval (" ",B)

caso ("b")
Escreval ("Digite o n�mero bin�rio:")
Leia (n1)                     //Usu�rio entra com o n�mero bin�rio, ap�s ter escolhido esse caso
conv<- 0                      //A vari�vel conv recebe o valor 0
x<- 1                         //A vari�vel x recebe o valor 1
posicao<- 1                   //A vari�vel posicao recebe 1
enquanto n1>0 faca            //Criamos uma condi��o onde o valor digitado teve ser maior que 0
res<- n1 mod 10               //A vari�vel res guardar� o mod 10 do numero digitado
n1<- n1 div 10                //A vari�vel n1 recebe o resultado da divis�o (div) dividindo por 10
digitos<- digitos+1           //A vari�vel digito � criada para verificar quantos digitos possui o n�mero digitado
x<- posicao*res               //A Vari�vel x recebe o valor da posi��o vezes o resto do mod 10 do n�mero
posicao<- posicao*2           //A vari�vel posicao ser multiplicada por 2 criando uma potencializa��o para a posi��o do digito
conv<- conv+x                 //A vari�vel conv recebe ela mais x concluindo a convers�o do n�mero
fimenquanto
Escreval ("o n�mero em decimal �:", conv)
outrocaso
fimescolha
fimpara


caso "7"
outrocaso
fimescolha
ate opcao = "7"               //O usu�rio poder� sair toda vez que retornar ao MENU digitando 7, fechando o la�o de repeti��o
Fimalgoritmo