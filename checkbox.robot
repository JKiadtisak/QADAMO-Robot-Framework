*** Settings ***
Resource    ../Resources/CommonLibrary/common_lib.resource

*** Keywords ***
Exersice select check box
    execute javascript    window.scrollTo(0, 1500)
    Wait Until Element Is Visible    ${BTN_ELEMEATS}
    Click Element    ${BTN_ELEMEATS}
    Wait Until Element Is Visible    ${BTN_CHECKBOX}
    Click Element    ${BTN_CHECKBOX}
    #click Button plus
    Click Element    ${BTN_PLUS}
    Wait Until Element Is Visible    ${CHECKBOX_DESKTOP}
    Click Element    ${CHECKBOX_DESKTOP}
    Wait Until Element Is Visible    ${CHECKBOX_WORKSPACE}
    Click Element    ${CHECKBOX_WORKSPACE}
    Wait Until Element Is Visible    ${CHECKBOX_OFFICE}
    Click Element    ${CHECKBOX_OFFICE}
    execute javascript    window.scrollTo(0, 1500)
    Wait Until Element Is Visible    ${CHECKBOX_DOWNLOADS}
    Click Element    ${CHECKBOX_DOWNLOADS}
    #Click Button Minus
    execute javascript    window.scrollTo(1500, 0)
    Wait Until Element Is Visible    ${BTN_MINUS} 
    Click Element    ${BTN_MINUS} 

*** Variables ***
${BTN_ELEMEATS}    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]
${BTN_CHECKBOX}    id=item-1
#locator checkbox
${BTN_PLUS}    css=#tree-node > div > button.rct-option.rct-option-expand-all > svg
${CHECKBOX_DESKTOP}    css=#tree-node > ol > li > ol > li:nth-child(1) > span > label > span.rct-checkbox > svg
${CHECKBOX_WORKSPACE}    css=#tree-node > ol > li > ol > li:nth-child(2) > ol > li:nth-child(1) > span > label > span.rct-checkbox > svg
${CHECKBOX_OFFICE}    css=#tree-node > ol > li > ol > li:nth-child(2) > ol > li:nth-child(2) > span > label > span.rct-checkbox > svg
${CHECKBOX_DOWNLOADS}    css=#tree-node > ol > li > ol > li:nth-child(3) > span > label > span.rct-checkbox > svg
#locator Button Minus
${BTN_MINUS}    css=#tree-node > div > button.rct-option.rct-option-collapse-all > svg