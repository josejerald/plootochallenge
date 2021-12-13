*** Settings ***
Resource  ..//PageObjects//PendingPayments_PageObj.robot

*** Keywords ***
Access Pending Payments From Dashboard
    Click On Pending Payments

Access Active Pending Payable Contact
    Click On Pending Payables Link
    Click On Active Payable Contact

Validate User Can Access Payment Approval For Contact
    ${url}=   Get Location
    Should Be Equal    ${page_url}/${pages}[pymntapproval]    ${url}

Validate Pending Payment Screen Is Presented
    ${url}=   Get Location
    Should Be Equal    ${page_url}/${pages}[pendingpymnt]    ${url}