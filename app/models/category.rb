class Category < ApplicationRecord
    has_many :dependent_categories, class_name: "Dependency", foreign_key: :dependee_id 
    has_many :dependents, through: :dependent_categories, source: :dependent

end
