class CardSerializer < ActiveModel::Serializer
  attributes :id, :def, :desc, :term

  has_many :categories
end
