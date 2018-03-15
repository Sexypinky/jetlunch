require 'rails_helper'

context "test" do
  let(:user) {create :user}

 before(:each) do visit dashboard_pages_path
 fill_in "user_password", with: "qwerty1234"
 fill_in "user_email", with: "person@example.com"
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
  if Date.today.strftime("%A")=='Thursday'
    click_link "Thursday"
    click_button "Add position"
    fill_in "menu_dish", with: "Fish"
    fill_in "menu_price", with: 12
    fill_in "menu_first", with: 1
   expect(page).to have_content "Position successfully created"
  end
end
end
