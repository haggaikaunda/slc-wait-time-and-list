class Student < ActiveRecord::Base
    self.primary_key = :sid
    has_many :drop_in_histories
    belongs_to :student_queues
end
