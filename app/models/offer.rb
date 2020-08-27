class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # validates :name, presence: true, length: { in: 15..100 }, uniqueness: true
  # validates :description, presence: true
  # validates :price, presence: true, numericality: true
  # validates :seats, presence: true, numericality: true
  # validates :total_seats, presence: true, numericality: true
  # validates :room, presence: true, numericality: true
  # validates :address, presence: true
  # validates :question1, presence: true
  # validates :question2, presence: true
  # validates :question3, presence: true

  def matching_r(user_logged)
    matching = 0
    # logged_user = User.current
    if user.criteria1 == user_logged.criteria1
      matching +=1
    end
    if user.criteria2 == user_logged.criteria2
      matching +=1
    end
    if user.criteria3 == user_logged.criteria3
      matching +=1
    end
    if user.criteria4 == user_logged.criteria4
      matching +=1
    end
    # raise
    matching_rate = matching
  end
end
