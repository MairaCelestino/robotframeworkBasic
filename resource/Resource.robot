*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${URL}          http://automationpractice.com/
${BROWSER}      chrome

*** Keywords ***
###Setup and Teardown

Abrir navegador
      Open Browser      about:blank   ${BROWSER}

Fechar navegador
      Close Browser

###Step by Step
Access the home page of the website
        Go To      http://automationpractice.com/
        Title Should Be       My Store

Type the product name "${PRODUCT}" in the search field
    Input Text   id=search_query_top  ${PRODUCT}

Click in the search button
  Click Element    name=submit_search
