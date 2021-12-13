*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestResources//CompanySelect_resource.robot
Resource  ..//TestData//Common_Data.robot
Resource  ..//TestResources//Dashboard_resource.robot
Resource  ..//TestResources//PendingPayments_resource.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate Pending Payment Access
    [Documentation]  Validating if user can access Pending Payment page
    [Tags]  Smoke    CompanySelect    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Access Pending Payments From Dashboard
    Validate Pending Payment Screen Is Presented
    Access Active Pending Payable Contact
    Validate User Can Access Payment Approval For Contact