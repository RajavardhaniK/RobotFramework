*** Comments ***
Alerts and Frames
Accept- ok button
Dismiss-Cancel button
Leave- still want to open the alert window sometime
Alert Should Be Present-verify the message present in the alert box

*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Handling Alerts
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Click Element    xpath://button[text()='Click Me']
    Sleep     2    
    #Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    leave
    Alert Should Be Present    Press a button!
    