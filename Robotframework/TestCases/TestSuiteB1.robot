*** Comments ***
Switch the browser window
*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
Handle the browser window
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    
    Sleep     2
    
    Open Browser    https://www.bing.com/      chrome
    Maximize Browser Window
    

    Switch Browser    1
    ${title} =    Get Title
    Log To Console    ${title}   
    
    Switch Browser    2
    ${title} =    Get Title
    Log To Console    ${title}  
    
    Sleep     3
