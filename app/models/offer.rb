class Offer < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { in: 15..100 }, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :seats, presence: true, numericality: true
  validates :total_seats, presence: true, numericality: true
  validates :room, presence: true, numericality: true
  validates :address, presence: true
  validates :question1, presence: true
  validates :question2, presence: true
  validates :question3, presence: true
end
