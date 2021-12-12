*** Settings ***
Resource  ..//PageObjects//CompanySelect_PageObj.robot

*** Keywords ***
Validate If User Can Access The Company List
    Page Should Contain Element    ${lbl_DefaultCompany_xpath}
    Element Should Contain    ${lbl_DefaultCompany_xpath}    ${lbl_DefaultCompany_label}

Validate Client List For Default Company
    Page Should Contain Element    ${lbl_DefaultCompany_xpath}
    Click on Default Company Name
    Page Should Contain Element    ${link_ClientCount_xpath}
    Sleep    5