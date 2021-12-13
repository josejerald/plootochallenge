*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestResources//CompanySelect_resource.robot
Resource  ..//TestData//Common_Data.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate User Can View Company List
    [Documentation]  Validating if user can see the list of companies
    [Tags]    Smoke    CompanySelect    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Validate If User Can Access The Company List

Validate Listing For Default Company
    [Documentation]  Validating client list for default company
    [Tags]    Smoke    CompanySelect    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Validate Client List For Default Company

Validate Dashboard Accessibility From Company Selection Page
    [Documentation]  Validating if dashboard is accessible upon clicking Plooto Inc
    [Tags]  Smoke   CompanySelect   PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Validate If Dashboard Opens Up With Content
    Validate Dashboard Contents


