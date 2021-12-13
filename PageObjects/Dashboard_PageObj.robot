*** Variables ***
${link_VerificationItems_xpath}    //*[@id="viewmodels-user-dashboard"]/div[2]/div[1]/div[1]/ul/li/a
${link_PmntApproval_xpath}    //a[contains(@href,"approvePayments")]
${link_PendingPmnts_xpath}    //a[contains(@href,"pendingPayments")]
${link_OnBoardNext_xpath}    //a[contains(@href,"onboardingWizard/nextStep")]
${span_RedActionBadge_xpath}    //span[contains(@class,"badge")]

*** Keywords ***
Click On Verification Items Link
    Wait Until Page Contains Element   ${link_VerificationItems_xpath}
    Click Element    ${link_VerificationItems_xpath}

Click On Payment Approvals
    Wait Until Page Contains Element   ${link_PmntApproval_xpath}
    Click Element    ${link_PmntApproval_xpath}

Click On Pending Payments
    Wait Until Page Contains Element   ${link_PendingPmnts_xpath}
    Click Element    ${link_PendingPmnts_xpath}

Click On Onboarding Wizard Link
    Wait Until Page Contains Element   ${link_OnBoardNext_xpath}
    Click Element    ${link_OnBoardNext_xpath}
