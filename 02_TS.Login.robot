*** Settings ***
Resource    ../Resources/CommonKeywords/common_keywords.resource
Resource    ../Resources/CommonVariable/common_variable.resource
Suite Setup    Open Browser    ${QADEMO_URL}/login    ${CHROME_BROWSER} 
Test Teardown    Go To    ${QADEMO_URL}/login             

*** Test Cases ***
User role "XX" can Loged-In successfully
    &{admin_user1}    Create Dictionary    username=Tester19     password=Test123@
    Maximize Browser Window
    execute javascript    window.scrollTo(0, 1500)
    Login with username & password    ${admin_user1.username}    ${admin_user1.password}
    Verify to Ensure user after logged-in    Tester19 