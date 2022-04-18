*** Settings ***
Documentation              Noona Demo APP Tests
Library                    SeleniumLibrary
Resource                   keywords.robot
Suite Teardown            Close All Browsers

*** Test Cases ***

Check that page is correctly loaded
    [Tags]  PGLOAD
    Navigate to Login page
    Maximize window
    Assert that page is correctly loaded


Invalid login credentials should return the right error message
    [Tags]  LOGIN_FAILED
    Enter an invalid login email address
    Enter an invalid login password
    CLick on Login button
    Assert the displayed error message for an invalid login atempt
    #close browser




# robot -d TestReports noona_tests.robot
