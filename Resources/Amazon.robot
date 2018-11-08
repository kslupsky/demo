*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Product.robot
Resource  ./PO/Cart.robot
Resource  ./PO/SignIn.robot

*** Keywords ***
Search for Products
    Landing.Load
    Landing.Verify Page Loaded  Hello
    TopNav.Search for Product
    SearchResults.Verify Search Complete

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
