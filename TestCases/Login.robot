*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestData//Common_Data.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate User Authentication
    [Documentation]  Validating if authenticated users are navigated to Company-Selection page
    [Tags]  Smoke    Login    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Validate User Can Access Company Selection Page
