*** Settings ***
Documentation     Essa suite testa o site da Amazon.com.br 
Resource          amazom_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador


Library   SeleniumLibrary

*** Test Cases ***
Caso de teste 01 - Acesso ao menu Eletronicos
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]        menus
    Acessar o home page do site da Amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
  

Caso de teste 02 - Pesquia de um produto
    [Documentation]    Este teste verifica a busca de um produto no site da Amazon
    [Tags]        busca_produtos    lista_busca
    Acessar o home page do site da Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"
    


# robot -t "Caso de teste 02 - Pesquia de um produto" hellowor.robot
