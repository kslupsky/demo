*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_SEARCH_RESULT} =  css=#result_0 a.s-access-detail-page

*** Keywords ***
Verify Search Complete
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    Sleep  1s
    Click Link  ${FIRST_SEARCH_RESULT}
