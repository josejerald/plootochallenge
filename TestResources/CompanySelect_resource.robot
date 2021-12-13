*** Settings ***
Resource  ..//PageObjects//CompanySelect_PageObj.robot
Resource  ..//PageObjects//Dashboard_PageObj.robot

*** Keywords ***
Validate If User Can Access The Company List
    Page Should Contain Element    ${lbl_DefaultCompany_xpath}
    Element Should Contain    ${lbl_DefaultCompany_xpath}    ${lbl_DefaultCompany_label}

Validate Client List For Default Company
    Page Should Contain Element    ${lbl_DefaultCompany_xpath}
    Click on Default Company Name
    Page Should Contain Element    ${link_ClientCount_xpath}

Click On Plooto Inc Company
    Click On Active Company

Validate If Dashboard Opens Up With Content
    ${url}=   Get Location
    Should Be Equal    ${page_url}/${pages}[dashbrd]    ${url}

Validate Dashboard Contents
    Wait Until Page Contains Element   ${link_VerificationItems_xpath}
    Wait Until Page Contains Element   ${link_PmntApproval_xpath}
    Wait Until Page Contains Element   ${link_PendingPmnts_xpath}
    Wait Until Page Contains Element   ${link_OnBoardNext_xpath}