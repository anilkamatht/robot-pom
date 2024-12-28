*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/locators.py


*** Keywords ***
Open my browser
     [Arguments]    ${siteurl}     ${browser}
     open browser    ${siteurl}    ${browser}
     maximize browser window

Click Register link
     click link    ${link_reg}

Enter first name
     [Arguments]    ${firstname}
     input text    ${txt_firstname}    ${firstname}

Enter last name
      [Arguments]    ${lastname}
      input text    ${txt_lastname}    ${lastname}

Enter Phone number
        [Arguments]  ${phone}
      input text    ${txt_phone}    ${phone}

Enter email
      [Arguments]    ${email}
     input text    ${txt_email}     ${email}

Enter address
      [Arguments]    ${address}
      input text    ${txt_add1}     ${address}

Enter city
      [Arguments]    ${city}
      input text    ${txt_city}     ${city}

Enter state
      [Arguments]    ${state}
      input text    ${txt_state}     ${state}

Enter postalcode
      [Arguments]    ${postcode}
      input text    ${txt_postcode}     ${postcode}

select country
      [Arguments]    ${country}
      select from list by label    ${drp_country}    ${country}

Enter Username
      [Arguments]    ${username}
      input text    ${txt_username}     ${username}

Enter password
      [Arguments]    ${password}
      input text    ${txt_password}     ${password}

Enter confirm password
      [Arguments]    ${confirmpassword}
      input text    ${txt_confirmpassword}     ${confirmpassword}

Click Submit
      click button    ${btn_submit}

Verify successfull registration
       page should contain    Thank you for registering.

close my browser
       close all browsers








