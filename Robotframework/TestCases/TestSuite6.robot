*** Comments ***
#close browser--------> Closes the recently opened browser
#close all browsers---> Closes the all open browsers
*** Settings ***
Library      SeleniumLibrary    
*** Test Cases ***
Handling the browsers
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
  
    Open Browser    http://automationpractice.com/index.php    chrome
    Maximize Browser Window
    #Close Browser
    Close All Browsers    