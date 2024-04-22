*** Settings ***
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***
Dado que acesso o site
    Open Browser    url=https://itera-qa.azurewebsites.net/home/automation    browser=chrome
