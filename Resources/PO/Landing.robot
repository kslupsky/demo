*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    [Arguments]  ${text}
    Wait Until Page Contains  ${text}