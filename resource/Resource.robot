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

Check if the product "${PRODUCT}" was listed on the website
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be                  Search - My Store
    Page Should Contain Image        xpath=//*[@id="center_column"]//*[@src="${URL}/img/p/7/7-home_default.jpg"]
    Page Should Contain Link         xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUCT}")]

Check message of error "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible    //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be           //*[@id="center_column"]/p[@class='alert alert-warning']  ${MENSAGEM_ALERTA}
