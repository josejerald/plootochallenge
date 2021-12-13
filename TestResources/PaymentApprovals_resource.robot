*** Settings ***
Resource  ..//PageObjects//PaymentApprovals_PageObj.robot

*** Keywords ***
Access Payment Approvals From Dashboard
    Click On Payment Approvals

Validate If Single Payment Exists in Payment Approvals
    Wait Until Page Contains Element   ${link_PymntAwaitApporval_xpath}
    Wait Until Page Contains Element   ${link_AllPymntApproval_xpath}
    Wait Until Page Contains Element   ${span_PymntContact_xpath}
    Page Should Contain Element    ${span_PymntContact_xpath}

Validate If Payment Approvals Displayed
    ${url}=   Get Location
    Should Be Equal    ${page_url}/${pages}[pymntappr]    ${url}
