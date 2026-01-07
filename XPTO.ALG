Algoritmo "XPTO"


Var
A,B,C,D:vetor[1..8] de caracter
piso,maiorvaga:caracter
vaga:inteiro
 i,j,n1,n2,n3,n4:inteiro
opcao:inteiro
Inicio

Para i de 1 ate 8 faca
A[i]:="O"
B[i]:="O"
C[i]:="O"
D[i]:="O"
fimpara

 Repita
 
    escrevaL("------------------------------")
escreval("-----BEM-VINDO XPTO PARK------")
 escreval("-----------MENU---------------")
 escreval("[1]-Aprsentar o painel de lugares")
 escreval("[2]-Selecionar lugar automaticamente")
  escreval("[3]-Selecionar vaga manualmente")
   escreval("[4]-Desocupar lugar")
    escreval("[5]-Exit")
    escreval("--------------------------")
      escreval("--------------------------")
     leia(opcao)
  escolha(opcao)
  
  //APRESENTAR O PAINEL
    
    caso 1
  escreva("Pisos 1  2  3  4  5  6  7  8")
  escreval
  escreva("A ")
  para i de 1 ate 8 faca
  escreva(A[i],"  ")
  fimpara
   escreval
  escreva("B ")
  para i de 1 ate 8 faca
  escreva(B[i],"  ")
  fimpara
    escreval
  escreva("C ")
  para i de 1 ate 8 faca
  escreva(C[i],"  ")
  fimpara
    escreval
  escreva("D ")
  para i de 1 ate 8 faca
  escreva(D[i],"  ")
  fimpara
   escreval
   
  //SELECIONAR AUTOMATICAMENTE
  
    caso 2
  escreval("opção 2")
  n1:=0
  n2:=0
  n3:=0
  n4:=0
   para i de 1 ate 8 faca
    se A[i]="O"  entao
     n1:=n1+1
    fimse
   fimpara
   para i de 1 ate 8 faca
    se B[i]="O"  entao
     n2:=n2+1
    fimse
   fimpara
   para i de 1 ate 8 faca
    se C[i]="O"  entao
     n3:=n3+1
    fimse
   fimpara
   para i de 1 ate 8 faca
    se D[i]="O"  entao
     n4:=n4+1
    fimse
   fimpara
   se (n1>=n2) e (n1>=n3) e (n1>=n4) entao
    maiorvaga:="A"
    senao
     se (n2>=n1) e (n2>=n3) e (n2>=n4) entao
      maiorvaga:="B"
     senao
     se (n3>=n1) e (n3>=n2) e (n3>=n4) entao
      maiorvaga:="C"
      senao
     se (n4>=n1) e (n4>=n2) e (n4>=n3) entao
      maiorvaga:="D"
      fimse
      fimse
     fimse
    fimse


  
  
  //SELECIONAR MANUALMENTE
  
    caso 3
  escreval("opção 3")
       escreval("Qual piso deseja ocupar sr/a?")
       leia(piso)
       escreval("E qual a vaga deseja?")
       leia(vaga)
       se (piso="A") ou (Piso="a") entao
        se A[vaga]="O" entao
          A[vaga]:="X"
          senao
          escreval("Ocupada")
          fimse
       fimse
        se (piso="B") ou (piso="b") entao
        se B[vaga]="O" entao
          B[vaga]:="X"
          senao
          escreval("Ocupada")
          fimse
       fimse
        se (piso="C") ou (piso="c") entao
        se C[vaga]="O" entao
          C[vaga]:="X"
          senao
          escreval("Ocupada")
          fimse
       fimse
        se (piso="D") ou (piso="d") entao
        se D[vaga]="O" entao
          D[vaga]:="X"
          senao
          escreval("Ocupada")
          fimse
       fimse
       
    //DESOCUPAR LUGAR
    
    caso 4
  escreval("opção 4")
  escreval("Qual piso deseja desocupar sr/a?")
       leia(piso)
       escreval("E qual a vaga deseja?")
       leia(vaga)
       se (piso="A") ou (piso="a") entao
        se A[vaga]="X" entao
         A[vaga]:="O"
         senao
         escreval("Já estava desocupado")
         fimse
        fimse
       se (piso="B") ou  (piso="b") entao
        se B[vaga]="X" entao
         B[vaga]:="O"
         senao
         escreval("Já estava desocupado")
         fimse
        fimse
       se (piso="C") ou (piso="c") entao
        se C[vaga]="X" entao
         C[vaga]:="O"
         senao
         escreval("Já estava desocupado")
         fimse
        fimse
       se (piso="D") ou (piso="d") entao
        se D[vaga]="X" entao
         D[vaga]:="O"
         senao
         escreval("Já estava desocupado")
         fimse
        fimse
  
      //EXIT
      
    caso 5
  escreval("Terminar")
  outrocaso
  escreval("opcção não existe")
  fimescolha
  escreval("****************")
 ate opcao=5


Fimalgoritmo