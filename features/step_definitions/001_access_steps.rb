#------------------------------------
# Author: Thayanne Albquerque Freire
# Feature: GoCase Access 
#------------------------------------
# User All Stores
# Name: Teste
# Last Name: GoCase
# CPF: 92689626241
# Date: 20/06/2000
# Email: teste@gocase.com.br
# Password: go@teste
#------------------------------------

# Valid and Invalid Access
When(/^I go to "([^"]*)"$/) do |address|
 	visit address
end

When(/^I click on the button "([^"]*)"$/) do |btn_generic|
  	click_on btn_generic
end

When(/^I enter with "([^"]*)" in "([^"]*)"$/) do |data, fild_data|
    fill_in fild_data, :with => data	
end

When(/^I click on the button logar "([^"]*)"$/) do |btn_login|
  	find(btn_login).click
end

When(/^I click on the button logout "([^"]*)"$/) do |btn_logout|
    find('.header__nav-user--logged').hover
    find(btn_logout).click   
end

Then(/^I see "([^"]*)"$/) do |error_msg|
  	page.should have_selector(error_msg)
end
	
## Reset the password
When(/^I click on the link "([^"]*)"$/) do |btn_link|
   find(btn_link).click
   sleep(1)
end

Then(/^I click on the submit "([^"]*)"$/) do |submit|
	find(submit).click
end

