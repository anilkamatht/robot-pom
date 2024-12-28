*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/registrationkeywords.robot

*** Variables ***
${browser}    chrome
${siteurl}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
RegistrationTest
     Open my browser    ${siteurl}     ${browser}
     Click Register link
     Enter first name    David
     Enter last name     Jhon
     Enter Phone number     1234567890
     Enter email    davidJoHn@gmail.com
     Enter address    Toranto
     Enter city     Toranto
     Enter state    Brampton
     Enter postalcode    L3S 1E7
     select country    CANADA
     Enter Username    johnxyx
     Enter password    johnxyx
     Enter confirm password    johnxyx
     Click Submit
     Verify successfull registration
     close my browser


