class Course < ApplicationRecord
	validates :short_name, presence: true, length: {minimum: 2, maximum: 50}
	validates :name, presence: true, length: {minimum: 5, maximum: 50}
	validates :description, presence: true, length: {minimum: 10, maximum: 300}

end