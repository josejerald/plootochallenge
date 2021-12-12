*** Settings ***
Library  Selenium2Library
Library  ..//Utils//Utilities.py
Resource  ..//PageObjects//Login_PageObj.robot
Resource  ..//PageObjects//CompanySelect_PageObj.robot

*** Variables ***

*** Keywords ***
Generate URL
    ${base}=    Generate Url For Env
    [return]  ${base}

Access Login Page
    ${page_url}=    Generate URL
    Set Test Variable    ${page_url}
    Open Browser    ${page_url}/${pages}[login]    Chrome
    Wait Until Element Is Visible    ${btn_SignIn_xpath}

Enter Credentials And Sign In
    [arguments]  ${email}    ${pwd}
    Enter Email Address In Login Page     ${email}
    Enter Passphrase In Login Page    ${pwd}
    Click Sign In button

Validate User Can Access Company Selection Page
    ${url}=   Get Location
    Should Be Equal    ${page_url}/${pages}[comp_sel]    ${url}



