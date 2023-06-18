*** Settings ***
Resource    ../Resources/CommonKeywords/common_keywords.resource
Resource    ../Resources/CommonVariable/common_variable.resource
Resource    ../Resources/CommonVariable/common_variable.resource
Suite Setup    Open Browser    ${QADEMO_URL}    ${CHROME_BROWSER}
Test Teardown    Go To    ${QADEMO_URL}


*** Test Cases ***
Learning Select 
    Example Select Radio Button