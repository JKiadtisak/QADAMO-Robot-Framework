*** Settings ***
Resource    ../Resources/CommonKeywords/common_keywords.resource
Resource    ../Resources/CommonVariable/common_variable.resource    



Suite Setup    Open Browser    ${QADEMO_URL}/register    ${CHROME_BROWSER}
Test Setup    Maximize Browser Window    


   
*** Test Cases ***
Sign up a new user success fully
    execute javascript    window.scrollTo(0, 1500)
    Sign up a new user    Test123    Tester    Tester123    Test1
  
