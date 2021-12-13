*** Variables ***
${link_PendingPybleHeader_xpath}    //*[@id="viewmodels-user-dashboard"]/div[2]/div[2]/div[4]/div[3]/ul/li[1]/a
${link_PendingRcvbleHeader_xpath}    //*[@id="viewmodels-user-dashboard"]/div[2]/div[2]/div[4]/div[3]/ul/li[2]/a
${span_ActivePayableContact_xpath}    //span[contains(text(),"Cavages")]

*** Keywords ***
Click On Pending Payables Link
    Wait Until Element Is Visible    ${link_PendingPybleHeader_xpath}
    Click Element    ${link_PendingPybleHeader_xpath}

Click On Pending Receivables Link
    Wait Until Element Is Visible    ${link_PendingRcvbleHeader_xpath}
    Click Element    ${link_PendingRcvbleHeader_xpath}

Click On Active Payable Contact
    Wait Until Element Is Visible    ${span_ActivePayableContact_xpath}
    Click Element    ${span_ActivePayableContact_xpath}