class Card < ApplicationRecord
    has_many :categorizations, dependent: :destroy
    has_many :categories, through: :categorizations
    has_many :card_tags, dependent: :destroy
    has_many :tags, through: :card_tags

end
