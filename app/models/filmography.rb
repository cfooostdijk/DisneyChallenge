class Filmography < ApplicationRecord
  include Filterable

  include Helpers

  has_one_attached :avatar
  belongs_to :genre
  belongs_to :characters
end
