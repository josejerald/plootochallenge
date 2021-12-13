*** Variables ***
${link_PymntAwaitApporval_xpath}    //a[contains(@href,"approve_payments")]
${link_AllPymntApproval_xpath}    //a[contains(@href,"company_payment_approvals")]
${span_PymntContact_xpath}    //*[@id="components-user-payments-massApproval"]/div[1]/form/table/tbody/tr/td[2]/span

*** Keywords ***
Click On Payments Awaiting Approval
    Click Element    ${link_PymntAwaitApporval_xpath}

Click On All Payments Awaiting Approval
    Click Element    ${link_AllPymntApproval_xpath}