*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON} =  id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add to Cart
    Sleep  1s
    Click Button  ${ADD_TO_CART_BUTTON}