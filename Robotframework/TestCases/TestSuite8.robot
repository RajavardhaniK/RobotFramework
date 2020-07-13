*** Comments ***
Frames
*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Handling the frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index    chrome
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep     3
    
    Select Frame    packageFrame
    Click Link    WebDriver    
    Unselect Frame    
    Sleep     3
    
    Select Frame    classFrame
    Click Link     Help
    Unselect Frame
    
    Close Browser