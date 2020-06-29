*** Comments ***
#Set_Selenium_speed = will wait every statement if you mentioned one time 
                      #Applicable to all the lines                        
#Set_Selenium_Timeout= will wait maximum time 
                       #default time = 5 seconds,
                       if you want to add more than 5 seconds you have to mention here
#Implicitwait=will wait every statement if you mentioned one time 
                      #Applicable to only if the condition is not met
                      #default = 0 seconds
#Sleep= will wait the one place if you mentioned one time
*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}         http://demowebshop.tricentis.com/register

*** Test Cases ***
Handling Waits
   #Set_selenium_speed 
   # ${Current_speed}=    Get Selenium Speed
   #Log To Console    Before: ${Current_speed}   
   
   #Set Selenium Timeout
   #${Current_timeout}=    Get Selenium Timeout
   #Log To Console    Before: ${Current_timeout} 
   
   #Set Selenium Implicitwait
   ${Current_Impwait}=    Get Selenium Implicit Wait
   Log To Console    Before: ${Current_Impwait} 
   Open Browser    ${url}     ${browser} 
   Maximize Browser Window
   #Set Selenium Speed    3 seconds
   #Set Selenium Timeout    10 seconds
   Set Selenium Implicit Wait    2 seconds
   Wait Until Element Is Visible    name:register-button    
   Wait Until Element Is Enabled    name:register-button    
   Select Radio Button    Gender    F    
   Input Text    name:FirstName            Raji
   Input Text    name:LastName             Kathir
   Input Text    name:Email                Raji@gmail.com
   Input Text    name:Password             Raji@123    
   Input Text    name:ConfirmPassword      Raji@123    
  #${Current_speed}=    Get Selenium Speed
  #Log To Console    After: ${Current_speed} 
   
  #${Current_timeout}=    Get Selenium Timeout
  #Log To Console    After: ${Current_timeout} 
  
   ${Current_Impwait}=    Get Selenium Implicit Wait
   Log To Console    After: ${Current_Impwait} 