class FilmographySerializer < ActiveModel::Serializer
  include Helpers

  attributes :avatar, :title, :date
  conditional_attributes :stars, :genre, :characters, if: :detailed?
end
