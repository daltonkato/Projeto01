*** Settings ***
Documentation     A simple example of using a library.
Library           RPA.Browser.Selenium

*** Tasks ***
Take a screenshot of the Robocorp frontpage
    Open Available Browser    https://www.robocorp.com
    Capture Page Screenshot