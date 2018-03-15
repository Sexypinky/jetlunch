class Menu < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :dish, :weekday, presence: true

  before_validation do
    self.dish.capitalize
    self.weekday.capitalize
  end

end
