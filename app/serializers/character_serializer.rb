class CharacterSerializer < ActiveModel::Serializer
  include Helpers

  attributes :avatar, :name
  conditional_attributes :age, :weight, :history, :filmographies, if: :detailed?
end
