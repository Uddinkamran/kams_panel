class Course < ApplicationRecord
    has_many :students
    has_one :instructor
    belongs_to :user
    belongs_to :cohort
end
