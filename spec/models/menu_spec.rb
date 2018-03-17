require 'rails_helper'

RSpec.describe Menu, type: :model do

  let(:menu) {create :menu}

  it "dish is valid" do
    expect(menu.validate(:dish)).to be_truthy
  end

  it "dish is not valid" do
    menu.update(dish: " ")
    expect(menu.validate(:dish)).to be_falsey
  end

  it "weekday is valid" do
    expect(menu.validate(:weekday)).to be_truthy
  end

  it "weekday is not valid" do
    menu.update(weekday: " ")
    expect(menu.validate(:weekday)).to be_falsey
  end

end