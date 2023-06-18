*** Settings ***
Resource    ../Resources/CommonKeywords/common_keywords.resource
Resource    ../Resources/CommonVariable/common_variable.resource
Resource    ../Resources/CommonLibrary/common_lib.resource
Suite Setup    Open Browser    ${QADEMO_URL}    ${CHROME_BROWSER}
Test Teardown    Go To    ${QADEMO_URL}


*** Test Cases ***
Sample test select check box
    Maximize Browser Window
    Exersice select check box
