*** Settings ***
Resource    ../Resources/CommonKeywords/common_keywords.resource
Resource    ../Resources/CommonVariable/common_variable.resource

Suite Setup    Open Browser    ${QADEMO_URL}    ${CHROME_BROWSER}
Test Teardown    Go To    ${QADEMO_URL}




*** Test Cases ***
Long Input Test box successfully
    Maximize Browser Window
    execute javascript    window.scrollTo(0, 1500)
    first Input Text box 001    Tester    Tester@gmail.com    192 ladprow ladprow bangkok 10230    185 sinakarin 40 supapong 1 soi 2 tantawnapartment pavat bongkok 10252

      
