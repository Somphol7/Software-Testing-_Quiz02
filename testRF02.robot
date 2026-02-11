*** Settings ***
Library             SeleniumLibrary
Suite Setup         https://chiangmuan.igovapp.com/         
Suite Teardown      Close Browser    

*** Variables ***


*** Keywords ***
login
    SeleniumLibrary.Textarea Should Contain 	 //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input	 expected 	 message=None

*** Test Cases ***
login


