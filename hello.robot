*** Settings ***
Documentation     A simple hello world test suite
Library           Browser

*** Test Cases ***
Hello World
    Open Browser    browser=chromium       headless=False
    New Page        https://adopet-tau.vercel.app
    Get Title       equal          AdoPet
    Sleep           5s