*** Settings ***
Library    SeleniumLibrary
Default Tags    Regression
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  chrome
${name}    name=username
${password}    name=password
${loginbtn}    //button[text()=' Login ']
&{Credentials}     username=Admin    password=admim123
*** Keywords ***
OrangehrmLogin
    [Tags]    Regression
    Open Browser    ${url}  ${browser}  
    Maximize Browser Window
    Sleep    10    
    Input Text    ${name}    &{Credentials}[username]
    Input Text    ${password}    &{Credentials}[password]
    Click Button    ${loginbtn}   
*** Test Cases ***
Orange HRM login
   OrangehrmLogin