kmz2kml
=============

Programa que extrai o arquivo kml de um arquivo kmz via linha de comando, funciona em Mac OS X e Linux.


## Specs
* Feito no SO: Mac OS X 10.6 (a.k.a. Snow Leopard)
* Testado no SO: Mac OS X 10.6 e Ubuntu Server 10.04 LTS
* Linguagem Utilizada: Shell Script
* Dependências: unzip


## HowTo
A utilização é simples, basta executar ele e passar um arquivo como argumento.

```
$ kmz2kml Arquivo.kmz
```

Caso o unzip não esteja instalado, o proprio programa instala (Somente em máquinas com gerênciador de pacotes apt ou yum).


### Exemplo de execução
```
$ ./kmz2kml Arquivo.kmz 
--> Bem vindo ao kmz2kml <--
--> Começando a extração
--> Feito... 
--> Arquivo extraído para Arquivo.kml
```

