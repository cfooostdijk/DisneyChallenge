class GenreSerializer < ActiveModel::Serializer
  include Helpers

  attributes :id, :kind, :avatar
end
