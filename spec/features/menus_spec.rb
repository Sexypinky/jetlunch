require 'rails_helper'

context "test" do

  let(:user) {create :user}

  before(:each) do
    user.update(email: 'jetlunch@gmail.com', password: 'qwerty1234')
    visit dashboard_pages_path
    fill_in "user_password", with: "qwerty1234"
    fill_in "user_email", with: "jetlunch@gmail.com"
    click_button "Log in"
    visit dashboard_pages_path
    end

  it "right display add position" do
    click_on Date.today.strftime("%A")
    expect(page).to have_content "Add position"
  end

  it "right add position" do
    click_on Date.today.strftime("%A")
    click_on "Add position"
    fill_in "menu_dish", with: "Fish"
    fill_in "menu_price", with: 12
    check 'menu_first'
    click_on "Add"
    expect(page).to have_content "Position successfully created"
  end

  it "right order" do
    click_on Date.today.strftime("%A")
    click_on "Add position"
    fill_in "menu_dish", with: "Fish"
    fill_in "menu_price", with: 12
    check 'menu_first'
    click_on "Add"

    click_on "Add position"
    fill_in "menu_dish", with: "Banana"
    fill_in "menu_price", with: 14
    check 'menu_main'
    click_on "Add"

    click_on "Add position"
    fill_in "menu_dish", with: "Water"
    fill_in "menu_price", with: 8
    check 'menu_drink'
    click_on "Add"

    click_on "Fish"
    click_on "Banana"
    click_on "Water"
    expect(page).to have_content "You'r ordered successfully"
  end

end
