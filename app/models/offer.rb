class Offer < ApplicationRecord
  belongs_to :user

  has_many_attached :photos
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

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
    matching_rate = ((1 / matching.to_f)*100).to_i
  end
end
