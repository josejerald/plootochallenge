*** Variables ***
${btn_SignIn_xpath}    //*[@id="components-signin"]/form/fieldset/div[3]/a
${inpt_Email_id}    email
${inpt_Pwd_id}    passphrase


*** Keywords ***
Click Sign In button
    Click Element    ${btn_SignIn_xpath}

Enter Email Address In Login Page
    [Arguments]  ${email}
    Input Text    ${inpt_Email_id}    ${email}

Enter Passphrase In Login Page
    [Arguments]  ${pwd}
    Input Text    ${inpt_Pwd_id}    ${pwd}
