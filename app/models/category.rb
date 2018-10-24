class Category < ApplicationRecord
    has_many :dependent_categories, class_name: "Dependency", foreign_key: :dependee_id
    has_many :dependents, through: :dependent_categories, source: :dependent

    has_many :dependency_categories, class_name: "Dependency", foreign_key: :dependent_id
    has_many :dependencies, through: :dependency_categories, source: :dependee

    has_many :categorizations
    has_many :cards, through: :categorizations
end
