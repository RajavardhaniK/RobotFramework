*** Comments ***
Select the Dropdown
Select the Listbox [selecting multiple value]
Unselect the Listbox
*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${browser}    chrome
${url}        http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
Handling Dropdown and ListBoxes
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    #Selecting the dropdown
    Select From List By Label    continents    Europe
    Select From List By Index    continents    6
    #Selecting the options from listbox
    Select From List By Label    selenium_commands    Browser Commands
    Select From List By Label    selenium_commands    Navigation Commands
    Select From List By Label    selenium_commands    Wait Commands
    Select From List By Label    selenium_commands    WebElement Commands
    #Unselecting the options from listbox
    Unselect From List By Label    selenium_commands    Navigation Commands
  