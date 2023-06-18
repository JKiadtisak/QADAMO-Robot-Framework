*** Settings ***
Resource    ../Resources/CommonLibrary/common_lib.resource        


*** Keywords ***
Sign up a new user 
    [Arguments]    ${firtsname}    ${lastname}    ${username}    ${password}
    #Fil  in all information required
    Wait Until Element Is Visible    ${INPUT_FIRSTNAME} 
    Input Text    ${INPUT_FIRSTNAME}    ${firtsname}
    Wait Until Element Is Visible    ${INPUT_LASTNAME}
    Input Text    ${INPUT_LASTNAME}    ${lastname}
    Wait Until Element Is Visible    ${INPUT_USERNAME}
    Input Text    ${INPUT_USERNAME}    ${username}
    Wait Until Element Is Visible    ${INPUT_PASSWORD}
    Input Text    ${INPUT_PASSWORD}    ${password}
#click register Button 
    Wait Until Element Is Visible    ${BTN_REGISTER}    
    Click Element    ${BTN_REGISTER}

Ensure user register successfully
    Alert Should Be Present    User Register Successfully.

Click button back to Login
    Wait Until Element Is Visible    ${BTN_BACK_TO_LOGIN}
    Click Element    ${BTN_BACK_TO_LOGIN}



*** Variables ***
#lOcator
${INPUT_FIRSTNAME}    id=firstname
${INPUT_LASTNAME}    id=lastname
${INPUT_USERNAME}    id=userName
${INPUT_PASSWORD}    id=password
${BTN_REGISTER}    id=register
${BTN_BACK_TO_LOGIN}    id=gotologin
