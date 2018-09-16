class Matriculation < ApplicationRecord
	belongs_to :institution
	belongs_to :student
	validates :total_value, :due_date, :num_invoices, presence: true
end
