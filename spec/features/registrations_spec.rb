require 'rails_helper'

RSpec.feature "Registrations", type: :feature do
  context "it has a Registration Page" do
    Steps "Has a form" do
      Given 'I am on the Registration page' do
        visit '/'
      end
      Then 'I can fill in the form' do
        fill_in "full_name", with: 'Joe'
        fill_in "street_address", with: '123 Learn St'
        fill_in "city", with: 'San Diego'
        fill_in "state", with: 'CA'
        fill_in "postal_code", with: '92134'
        fill_in "country", with: 'USA'
        fill_in "email_address", with: 'joe@joe.com'
        fill_in "user_id", with: 'joe_id'
        fill_in "password", with: '1234'
      end
      Then 'I can register' do
        click_button "Register"
      end
    end #steps
  end #context

  context "user registration successful" do
    Steps "Displays user_id" do
      Given "I have registered" do
        visit "/"
        fill_in "full_name", with: 'Joe'
        fill_in "street_address", with: '123 Learn St'
        fill_in "city", with: 'San Diego'
        fill_in "state", with: 'CA'
        fill_in "postal_code", with: '92134'
        fill_in "country", with: 'USA'
        fill_in "email_address", with: 'joe@joe.com'
        fill_in "user_id", with: 'joe_id'
        fill_in "password", with: '1234'
      end
      Then 'I can register' do
        click_button "Register"
      end
      Then "I can see successful registration message" do
        expect(page).to have_content("successful")
        expect(page).to have_content("joe_id")
      end
      Then 'I can click the log in button' do
        click_link "Log in here"
      end
      Then 'I am taken to the Log In Page' do
        click_button "Log In"
      end
    end
    end #steps
  end #context


end #RSpec
