class Genre < ApplicationRecord
  include Helpers
  has_one_attached :avatar
  has_many :filmographies
  has_many :characters, through: :filmographies
end
