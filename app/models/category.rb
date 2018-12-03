class Category < ApplicationRecord
    has_many :dependent_categories, class_name: "Dependency", foreign_key: :dependee_id, dependent: :destroy
    has_many :dependents, through: :dependent_categories, source: :dependent

    has_many :dependency_categories, class_name: "Dependency", foreign_key: :dependent_id, dependent: :destroy
    has_many :dependencies, through: :dependency_categories, source: :dependee

    has_many :categorizations, dependent: :destroy
    has_many :cards, through: :categorizations
end
