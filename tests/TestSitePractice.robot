*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

### TESTE SETUP ele roda Keyword antes da suite ou antes de um Teste
### TESTE TEARDOWN ele roda Keyword depois de uma suite ou de um Teste

##*** Variables ***
*** Test Case ***
Case Test 01: Find existing product
  ### [Setup] Close browser   ----> se tiver um setup proprio no caso de teste ele ignora o Test SETUP da suite
  #Acessar a página home do site
     Access the home page of the website
     #Verify if the home page was displayed
     #Type the product name "Blouse22" in the search field
     #Click in the search button
     #Check if the product "Blouse" was listed on the website
### [TEARDOWN] Close browser   ----> se tiver um setup proprio no caso de teste ele ignora o Test TEARDOWN da suite

#Case Test 02 : Find not existing product
#    Access the home page of the website
#    Verify if the home page was displayed
     Type the product name "itemNotExist" in the search field
     Click in the search button
     Check message of error "No results were found for your search "itemNotExist""

#*** Keywords ***
