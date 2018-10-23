class Dependency < ApplicationRecord
    belongs_to :dependent, foreign_key: :dependent_id, class_name: "Category"
    belongs_to :dependee, foreign_key: :dependee_id, class_name: "Category"
    # def crazy
    #     return "Crazy"
    # end

end
