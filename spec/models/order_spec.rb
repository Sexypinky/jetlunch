require 'rails_helper'

RSpec.describe Order, type: :model do

  let(:order) { create(:order) }

  it "first is valid" do
    expect(order.validate(:first)).to be_truthy
  end

  it "first is not valid" do
    order.update(first: " ")
    expect(order.validate(:first)).to be_falsey
  end

  it "total_price is valid" do
    expect(order.validate(:total_price)).to be_truthy
  end

  it "total_price is not valid" do
    order.update(total_price: " ")
    expect(order.validate(:total_price)).to be_falsey
  end

  it "main is valid" do
    expect(order.validate(:main)).to be_truthy
  end

  it "main is not valid" do
    order.update(main: " ")
    expect(order.validate(:main)).to be_falsey
  end

  it "drink is valid" do
    expect(order.validate(:drink)).to be_truthy
  end

  it "drink is not valid" do
    order.update(drink: " ")
    expect(order.validate(:drink)).to be_falsey
  end

  it "weekday is valid" do
    expect(order.validate(:weekday)).to be_truthy
  end

  it "weekday is not valid" do
    order.update(weekday: " ")
    expect(order.validate(:weekday)).to be_falsey
  end

end