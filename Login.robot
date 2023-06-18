*** Settings ***
Resource    ../Resources/CommonLibrary/common_lib.resource


*** Keywords ***
Login with username & password
    [Arguments]    ${username}    ${password} 
    Input Text    ${INPUT_USERNAME}    ${username}
    Input Text    ${INPUT_PASSWORD}    ${password}
    Click Element    ${BTN_LOGIN}


Verify to Ensure user after logged-in   
   [Arguments]    ${text}   
    Wait Until Element Is Visible    ${LABEL_USERNAME_LOGGED_IN}
    Element Should Contain    ${LABEL_USERNAME_LOGGED_IN}    ${text}



*** Variables ***
#Locator 
${INPUT_USERNAME}    id=userName
${INPUT_PASSWORD}    id=password
${BTN_LOGIN}    id=login
${BTN_NEWUSER}    id=newUser

${LABEL_USERNAME_LOGGED_IN}    id=userName-value

${LABEL_ERROR_MESSAGE}    id=name