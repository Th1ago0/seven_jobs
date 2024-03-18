class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants
  
  validates :salary, presence: true
  validates :location, presence: true
  validates :title, presence: true
  validates :requirements, presence: true
  validates :description, length: {minimum:3, maximum: 1000}, presence: true
end
