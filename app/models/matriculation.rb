class Matriculation < ApplicationRecord
	belongs_to :institution
	belongs_to :student
	validates :institution, :student, presence: true
	validates_associated :student, :institution
end
