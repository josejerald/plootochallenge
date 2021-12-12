*** Variables ***
${lbl_DefaultCompany_xpath}    //*[@id="viewmodels-user-company-select"]/div/div/div/div[2]/div/div[1]/ul[1]/li[1]/a/span
${lbl_DefaultCompany_label}    Plooto Inc.
${link_ClientCount_xpath}    //*[@id="components-user-companies-selectCompanyAccountantDashboard"]/div/ul[1]/li/a


*** Keywords ***
Click on Default Company Name
    Click Element    ${lbl_DefaultCompany_xpath}

Click On Client Count
    Click Element    ${link_ClientCount_xpath}
