*** Settings ***
Resource  ..//PageObjects//Dashboard_PageObj.robot

*** Keywords ***
Validate If Dashboard Opens Up With Company Verfication Info
    Wait Until Page Contains Element   ${link_OnBoardNext_xpath}

Validate If Dashboard Contains Actionable Items
    Wait Until Page Contains Element   ${link_OnBoardNext_xpath}

Validate If Actionable Item Is Clickable
    Wait Until Page Contains Element   ${link_OnBoardNext_xpath}
    Click Element   ${link_OnBoardNext_xpath}
    ${url}=   Get Location
    Should Not Be Equal    ${page_url}/${pages}[dashbrd]    ${url}