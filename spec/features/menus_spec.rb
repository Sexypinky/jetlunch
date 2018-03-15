require 'rails_helper'

context "test" do
 before(:each) do visit dashboard_pages_path
 fill_in "user_password", with: "pass"
 fill_in "user_email", with: "email"
 click_button "Log in"
 visit dashboard_pages_path
end

it "right display add position" do
  if Date.today.strftime("%A")=='Thursday'
  click_link "Thursday"
  expect(page).to have_content "Add position"
  end
end

it "right order" do
  click_link "Wednesday"
  click_link "Banana"
  click_link "Sosuges"
  click_link "Vodka"
  expect(page).to have_content "You'r ordered successfully "
end
 end
