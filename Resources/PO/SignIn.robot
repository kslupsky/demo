*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_BUTTON} =  id=signInSubmit

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Page Should Contain Element  ${SIGNIN_BUTTON}