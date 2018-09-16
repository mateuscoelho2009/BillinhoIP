class Student < ApplicationRecord
	has_many :matriculations
	belongs_to :gender
	belongs_to :payment_method

	validates :name, :cpf, presence: true
	validates :cpf, numericality: { only_integer: true, greater_than: 0 }
	validates :name, :cpf, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  	validates_uniqueness_of :name, :cpf
end
