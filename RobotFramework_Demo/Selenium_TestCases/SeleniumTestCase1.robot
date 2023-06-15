*** Settings ***
Library    SeleniumLibrary
*** Variables ***

# Scalar Variables
${URL}    https://google.com 

# List variables
@{sKeyword}    Mysore Palace    Coorg    Ooty

# Dictionary Variables
&{Credentials}     username=Admin    password=admim123

*** Test Cases ***
FirstSeleniumTestCase
    Open Browser    ${URL}    chrome  
    Maximize Browser Window
    Sleep    10    
    Input Text    name=q                  @{sKeyword}[2]
    Sleep    10  
    Click Button  name=btnK    
    Sleep    10    
    Click Element   (//a[@class='zItAnd FOU1zf']/div[@class='O3S9Rb'])[1]    
    
    # Environment variables
    Log    This test case is executed by %{username} on %{os}
    