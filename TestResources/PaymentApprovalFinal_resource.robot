*** Settings ***
Resource  ..//PageObjects//PaymentApprovalFinal_PageObj.robot

*** Keywords ***
Validate Payment Approval Contains Payment Details
    Wait Until Page Contains Element   ${lbl_PymntDetailsHeader_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsContact_xpath}
    Element Should Contain    ${lbl_PymntDetailsContact_xpath}    ${contact_name}
    Page Should Contain Element    ${lbl_PymntDetailsAmnt_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsXchgRate_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsDebitDate_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsStatus_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsFullName_xpath}
    Page Should Contain Element    ${lbl_PymntDetailsEstCreditDate_xpath}

Validate Payment Approval Contains Approval Process
    Wait Until Page Contains Element   ${lbl_PymntAprvlHistTitle_xpath}
    Element Should Contain    ${lbl_PymntAprvlHistTitle_xpath}    ${lbl_PymntAprvlHistTitle_value}
    Page Should Contain Element    ${tr_PymntAprvlHist_xpath}

Validate Payment Approval Contains Audit Trail
    Wait Until Page Contains Element   ${lbl_AuditTrailTitle_xpath}
    Element Should Contain    ${lbl_AuditTrailTitle_xpath}    ${lbl_AuditTrailTitle_value}
    Page Should Contain Element    ${div_AuditLogList_id}
