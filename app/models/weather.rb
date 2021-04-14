class Weather < ApplicationRecord
    
    
  validates :day, presence: true
  validates :weather, presence: true
  validates :temperture, presence: true
  validates :rainy_percent, presence: true
end
