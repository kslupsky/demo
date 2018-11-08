*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKOUT_BUTTON} =  id=hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
#    Sleep  3s
    Click Link  ${CHECKOUT_BUTTON}