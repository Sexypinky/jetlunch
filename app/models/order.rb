class Order < ApplicationRecord

  belongs_to :user
  validates :first, :main, :drink, :weekday , :total_price, presence: true

  before_validation do
    self.weekday.capitalize
  end

end
