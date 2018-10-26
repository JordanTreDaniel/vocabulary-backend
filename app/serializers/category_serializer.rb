class CategorySerializer < ActiveModel::Serializer
  attributes :id, :desc, :name, :img_url
  has_many :cards
  has_many :dependencies
  has_many :dependents
end
