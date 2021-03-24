*** Settings ***
Library    RPA.Dialogs

*** Test Cases ***
Test1: Form
    Ask Question From User By Form Built With Keywords

*** Keywords ***
Ask Question From User By Form Built With Keywords
    Create Form     questions
    Add Text Input  label=What is your name?  name=username
    &{response}=    Request Response
    Log             Username is "${response}[username]"

Ask Question From User By Form Specified With JSON
    &{response}=    Request Response  myform.json
    Log             Username is "${response}[username]"
