class Card < ApplicationRecord
    has_many :categorizations
    has_many :categories, through: :categorizations
    has_many :card_tags
    has_many :tags, through: :card_tags 

end
