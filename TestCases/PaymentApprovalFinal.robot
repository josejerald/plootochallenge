*** Settings ***
Test Teardown     Close All Browsers
Resource  ..//TestResources//Login_resource.robot
Resource  ..//TestResources//CompanySelect_resource.robot
Resource  ..//TestData//Common_Data.robot
Resource  ..//TestResources//Dashboard_resource.robot
Resource  ..//TestResources//PendingPayments_resource.robot
Resource  ..//TestResources//PaymentApprovalFinal_resource.robot

*** Variables ***
#Section to add variables if any

*** Test Cases ***
Validate Payment Approval
    [Documentation]  Validating if Payment Approval page contains payment, approval and audit trails
    [Tags]  Smoke    PaymentApproval    PlootoChallenge
    Access Login Page
    Enter Credentials And Sign In    ${login_email}    ${login_pwd}
    Click On Plooto Inc Company
    Access Pending Payments From Dashboard
    Access Active Pending Payable Contact
    Validate User Can Access Payment Approval For Contact
    Validate Payment Approval Contains Payment Details
    Validate Payment Approval Contains Approval Process
    Validate Payment Approval Contains Audit Trail
