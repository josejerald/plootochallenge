*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestResources//CompanySelect_resource.robot
Resource  ..//TestData//Common_Data.robot
Resource  ..//TestResources//Dashboard_resource.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate Dashboard Default Content
    [Documentation]  Validate if company verfication page is loaded by default
    [Tags]  Smoke    Dashboard    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Validate If Dashboard Opens Up With Company Verfication Info

Validate Dashboard Highlights Actionable Items
    [Documentation]  Validate if dashboard highlights actionable items
    [Tags]  Smoke    Dashboard    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Validate If Dashboard Contains Actionable Items
    Validate If Actionable Item Is Clickable