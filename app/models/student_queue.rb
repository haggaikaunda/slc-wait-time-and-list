class StudentQueue < ActiveRecord::Base
    belongs_to :students #not sure if there should be a relationship with the student model? Thoughts?
end
