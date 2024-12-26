*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/loginkeywords.robot

*** Variables ***
${browser}    chrome
${siteurl}    https://demo.guru99.com/test/newtours/
${username}    tutorial
${pwd}       tutorial

*** Test Cases ***
LoginTest1
    Open my browser     ${siteurl}     ${browser}
    Enter Username     ${username}
    Enter Password      ${pwd}
    Click SignIn
    sleep    3s
    Verify successfull login
    close my browser