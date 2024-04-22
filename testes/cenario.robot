*** Settings ***   
Resource          ../resources/main.robot
Test Setup        Dado que acesso o site

*** Test Cases ***

Cenário 1: Preencher formulário Textarea Practice
    E Preencher campos
    E clicar no submit
    
Cenário 2: Preenchendo as CheckBox & Radio Button practice
    E clicar nos campos genero
    E selecionar os dias da semana

Cenário 3: selecionando um pais com DropDown
    E selecionar um pais    

Cenário 4: Preenchendo formulário CheckBox & Radio button
    E selecionar o ano
    E selecionar as automacoes e framework

Cenário 5: Fazer upload de uma foto no site
    E fazer upload de uma foto no site

    
    