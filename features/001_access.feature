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

Feature: GoCase Access 
	
	@nacional
	Scenario: Login with valid datas
	 	When I go to "http://rails.gocase.com.br/"
	 		And I click on the button "btn-login"
	 		And I enter with "teste@gocase.com.br" in "spree_user_email"
	 		And I enter with "go@teste" in "spree_user_password"
	 		And I click on the button logar "#new_spree_user [type=submit]"
	 	Then I click on the button logout "#btn-logout"	

	 @internacional
	 Scenario: Login with valid datas
 	 	When I go to "http://rails.shop-gocase.com/"
	 		And I click on the button "btn-login"
			And I enter with "teste@gocase.com.br" in "spree_user_email"
	 		And I enter with "go@teste" in "spree_user_password"
	 		And I click on the button logar "#new_spree_user [type=submit]"
	 	 Then I click on the button logout "#btn-logout"

	@nacional 
	Scenario: Login with invalid datas
 	 	When I go to "http://rails.gocase.com.br/"
	 		And I click on the button "btn-login"
	 		And I enter with "teste@gocase.com.br" in "spree_user_email"
	 		And I enter with "go@123" in "spree_user_password"
	 		And I click on the button logar "#new_spree_user [type=submit]" 
		Then I see ".alert-error"

	@internacional 
	Scenario: Login with invalid datas
		When I go to "http://rails.shop-gocase.com/"
	 		And I click on the button "btn-login"
	 		And I enter with "teste@gocase.com.br" in "spree_user_email"
	 		And I enter with "go@123" in "spree_user_password"
	 		And I click on the button logar "#new_spree_user [type=submit]" 
		Then I see ".alert-error"

	@nacional 
	Scenario: Reset password
		When I go to "http://rails.gocase.com.br/"
			And I click on the button "btn-login"
			And I click on the link ".inline-link"
			And I enter with "teste@gocase.com.br" in "spree_user[email]"
		Then I click on the submit ".form__submit"
		#Then I see "mensagem"

	@internacional 
	Scenario: Reset password
		When I go to "http://rails.shop-gocase.com/"
			And I click on the button "btn-login"
			And I click on the link ".inline-link"
			And I enter with "teste@gocase.com.br" in "spree_user[email]"
		Then I click on the submit ".form__submit"
		#Then I see "mensagem"

	@nacional
	Scenario: Login with facebook
	
	@internacional
	Scenario: Login with facebook

	@nacional
	Scenario: Login with google

	@internacional
	Scenario: Login with google

	@nacional
	Scenario: Remember 

	@internacional 
	Scenario: Remember	 	

