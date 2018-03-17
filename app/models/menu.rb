class Menu < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :dish, :weekday, :price, presence: true
  validates :first, presence: true, unless: ->(menu){not menu.main.blank? or not menu.drink.blank?}
  validates :main, presence: true, unless: ->(menu){not menu.drink.blank? or not menu.first.blank?}
  validates :drink, presence: true, unless: ->(menu){not menu.first.blank? or not menu.main.blank? }
  validates :price, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }

  before_validation do
    self.dish.capitalize
    self.weekday.capitalize
  end

end
