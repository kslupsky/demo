*** Settings ***
Documentation  This is some basic information about the test suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  edge
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  red car

*** Test Cases ***
User can search for products
    [Documentation]  This is info about the test
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to check out
    [Documentation]  This is info about the test
    [Tags]  Smoke  Long
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin checkout
