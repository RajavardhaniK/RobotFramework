*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello Raji!!!!    
    
FirstSeleniumTest
    Log     TestStarted
    Open Browser  https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q        Robotframework  
    Press Keys    name=q        ENTER       
    Sleep    2    
    Close Browser
    Log    TestCompleted    