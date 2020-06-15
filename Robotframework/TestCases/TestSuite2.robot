*** Comments ***
#Validate the Inputbox
#Verify the title of the page
#Visibility status,Enabled status,Provide the value,Clearing the value
*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${browser}     chrome
${url}        https://www.google.com/intl/en-GB/gmail/about/#

*** Test Cases ***
ValidateTextBox
    Open Browser     ${url}         ${browser}    
    Maximize Browser Window
    Title Should Be    Gmail - Email from Google
    ${"Signin_link"}    set variable    xpath:(//*[contains(text(),'Sign in')])[2]
    Click Element        ${"Signin_link"}  
    Select Window   NEW  
    ${"Email_field"}    set variable     id:identifierId
    Element Should Be Visible      ${"Email_field"}    
    Element Should Be Enabled      ${"Email_field"}
    Input Text    ${"Email_field"}    rajavardhani@gmail.com    
    Sleep    5    
    Clear Element Text    ${"Email_field"} 
                                         