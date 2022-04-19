*** Settings ***
Documentation              Noona Demo APP Tests
Library                    SeleniumLibrary
Resource                   keywords.robot
#Suite Teardown            Close All Browsers

*** Test Cases ***

Check that page is correctly loaded
    [Tags]  PGLOAD
    Navigate to Login page
    Maximize window
    Assert that page is correctly loaded
    close browser


Invalid login credentials should return the right error message
    [Tags]  LOGIN_FAILED
    Navigate to Login page
    Maximize window
    Enter an invalid login email address
    Enter an invalid login password
    Click on Login button
    Assert displayed error message is correct
    close all browsers



# robot -d TestReports noona_tests.robot
