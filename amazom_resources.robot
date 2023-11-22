*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}     https://www.amazon.com.br/
${MENU_ELETRONICOS}     //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${SPAN_ELETRONICOS}    //span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'Eletrônicos e Tecnologia')]
${TEXT_TITLE_ELETRONICOS}    Eletrônicos e Tecnologia | Amazon.com.br
${NOME_CATEGORIA}    Computadores e InfoElement Should Be Visible
*** Keywords ***
Abrir o navegador    
    Open Browser    browser=chrome
    Maximize Browser Window
    # Close Browser 

Acessar o home page do site da Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletronicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

Verificar se o título fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]    