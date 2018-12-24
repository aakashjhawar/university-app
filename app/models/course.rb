class Course < ApplicationRecord
	validates :short_name, presence: true, length: {minimum: 2, maximum: 50}
	validates :name, presence: true, length: {minimum: 5, maximum: 50}
	validates :d, presence: true, length: {minimum: 10, maximum: 300}
  has_many :student_courses
  has_many :students, through: :student_courses

end