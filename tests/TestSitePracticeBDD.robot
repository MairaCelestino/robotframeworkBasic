*** Settings ***
Library           SeleniumLibrary

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
