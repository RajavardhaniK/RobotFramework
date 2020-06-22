*** Comments ***
Select the Radiobutton
Select the Checkbox
Unselect the Checkbox
*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${browser}     chrome
${url}        http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
Testing RadioButton and CheckBoxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    #Selecting RadioButton
    Select Radio Button    sex    Female
    Select Radio Button    exp    4
    #Selecting Checkbox
    Select Checkbox    BlackTea
    Select Checkbox    RedTea
    Select Checkbox    oolongtea
    #Unselecting the checkbox
    Unselect Checkbox    RedTea