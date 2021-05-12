class Character < ApplicationRecord
  include Filterable

  include Helpers

  has_one_attached :avatar
  has_many :filmographies
  has_many :genre, through: :filmographies
end
