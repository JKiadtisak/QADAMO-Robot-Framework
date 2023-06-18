*** Settings ***
Resource    ../Resources\CommonLibrary\common_lib.resource

*** Keywords ***
first Input Text box 001
    Wait Until Element Is Visible    ${BTN_ELEMEATS}
    Click Element    ${BTN_ELEMEATS}
    Wait Until Element Is Visible    ${BTN_TEXTBOX}
    Click Element    ${BTN_TEXTBOX}


    [Arguments]    ${fullname}    ${email}    ${currenraddress}    ${permanentaddress}
    Wait Until Element Is Visible    ${INPUT_FULLNAME}
    Input Text    ${INPUT_FULLNAME}   ${fullname}
    Wait Until Element Is Visible    ${INPUT_EMALL}
    Input Text    ${INPUT_EMALL}    ${email}
    Wait Until Element Is Visible    ${INPUT_CURRENTADDRESS}
    Input Text    ${INPUT_CURRENTADDRESS}    ${currenraddress}
    Wait Until Element Is Visible    ${INPUT_PERMANENTADDRESS}
    Input Text    ${INPUT_PERMANENTADDRESS}    ${permanentaddress}

    Wait Until Element Is Visible    ${BTN_SUBMIT}
    Click Element    ${BTN_SUBMIT}   



*** Variables ***

${BTN_ELEMEATS}    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]
${BTN_TEXTBOX}    id=item-0


${INPUT_FULLNAME}    id=userName
${INPUT_EMALL}    id=userEmail
${INPUT_CURRENTADDRESS}    id=currentAddress
${INPUT_PERMANENTADDRESS}    id=permanentAddress

${BTN_SUBMIT}    id=submit