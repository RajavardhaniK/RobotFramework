*** Comments ***
Switch the tabbed window
*** Settings ***
Library    SeleniumLibrary   

*** Test Cases ***
Handle the Tabbed window
     Open Browser     http://demo.automationtesting.in/Windows.html       chrome
     Maximize Browser Window
     Click Element    xpath://*[@id='Tabbed']//button
     Select Window    title=sakinalium.in  
     Sleep    2  
     Close All Browsers
     

