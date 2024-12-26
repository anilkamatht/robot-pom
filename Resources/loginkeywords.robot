*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Open my browser
     [Arguments]    ${siteurl}     ${browser}
     open browser    ${siteurl}    ${browser}

Enter Username
      [Arguments]    ${username}
      input text    ${txt_loginuserName}    ${username}

Enter Password
       [Arguments]    ${password}
       input text    ${txt_loginpassword}   ${password}

Click SignIn
        click button     ${btn_signin}

Verify successfull login
        title should be    Login: Mercury Tours

close my browser
        close all browsers














