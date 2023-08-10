*** Settings ***
Resource    ../Resources/CommonLibrary/common_lib.resource


*** Keywords ***
Example Select Radio Button
    Maximize Browser Window
    Wait Until Element Is Visible    ${YES_BUTTON}
    Click Element    ${YES_BUTTON}
    Wait Until Element Is Visible    ${IMPRESSIVE_BUTTON}
    Click Element    ${IMPRESSIVE_BUTTON}
    Wait Until Element Is Visible    ${NO_BUTTON}
    Click Element    ${NO_BUTTON}





*** Variables ***
${BTN_ELEMEATS}    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]
${BTN_CHECKBOX}    id=item-2

#locator Radio Button
${YES_BUTTON}    xpath=//*[@id="yesRadio"]
${IMPRESSIVE_BUTTON}    xpath=//*[@id="impressiveRadio"]
${NO_BUTTON}    xpath=//*[@id="noRadio"]
