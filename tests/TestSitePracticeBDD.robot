*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Variables ***
${URL}          http://automationpractice.com/index.php
${BROWSER}      chrome

*** Test Case ***
Scenario 01: Find existing product
    Give that I am in the home page of the website
    When I search for the product "Blouse"
    Then the product "Blouse" must be listed on the search result page

Scenario 02 : Find not existing product
  Give that I am in the home page of the website
  When I search for the product "itemNotExist"
  Then the page must be display the message "No results were found for your search "itemNotExist""

*** Keywords ***
Give that I am in the home page of the website
    Access the home page of the website

When I search for the product "${PRODUCT}"
    Type the product name "${PRODUCT}" in the search field
    Click in the search button

Then the product "${PRODUCT}" must be listed on the search result page
    Check if the product "${PRODUCT}" was listed on the website

Then the page must be display the message "${MENSAGEM_ALERTA}"
    Check message of error "${MENSAGEM_ALERTA}"
