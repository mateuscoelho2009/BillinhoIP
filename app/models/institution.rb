class Institution < ApplicationRecord
  belongs_to :kind
  validates :name, :cnpj, presence: true
  validates :cnpj, numericality: { only_integer: true, greater_than: 0 }
  validates :name, :cnpj, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates_uniqueness_of :name, :cnpj
end
