# *** Settings ***
# Documentation     This is some basic info about the whole suite
# Resource                ../PO/Common.robot
# Resource                ../PO/Amazon.Web.Gui.robot
# Test Setup              Common.Begin Web Test
# Test Teardown        Common.End Web Test

*** Variables ***
${BROWSER} =    firefox
${START_URL} =     https://www.amazon.nl
${SEARCH_TERM} =     Lamborghini Gallardo
