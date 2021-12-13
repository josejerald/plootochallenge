*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestResources//CompanySelect_resource.robot
Resource  ..//TestData//Common_Data.robot
Resource  ..//TestResources//Dashboard_resource.robot
Resource  ..//TestResources//PaymentApprovals_resource.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate Single Payment in Payment Approval
    [Documentation]    Validating single payment is displayed in Payment Approval
    [Tags]    Smoke    PaymentApprovals    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Access Payment Approvals From Dashboard
    Validate If Payment Approvals Displayed
    Validate If Single Payment Exists in Payment Approvals