class Offer < ApplicationRecord
  attr_accessor :rate
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

  # def my_bookings(user)
  # return Offer.where(user_id: user.id).count
  # end


  def matching_r(user_logged)
    matching = 0
    # logged_user = User.current
    if user.criteria1 == user_logged.criteria1
      matching += 4
    elsif ((user.criteria1.to_i) == (user_logged.criteria1.to_i + 1))
      matching += 3
    elsif ((user.criteria1.to_i) == (user_logged.criteria1.to_i - 1))
      matching += 3
    elsif ((user.criteria1.to_i) == (user_logged.criteria1.to_i + 2))
      matching += 1
    elsif ((user.criteria1.to_i) == (user_logged.criteria1.to_i - 2))
      matching += 1
    end

    if user.criteria2 == user_logged.criteria2
      matching += 4
    elsif ((user.criteria2.to_i) == (user_logged.criteria2.to_i + 1)) || ((user.criteria2.to_i) == (user_logged.criteria2.to_i - 1))
      matching += 3
    elsif ((user.criteria2.to_i) == (user_logged.criteria2.to_i + 2)) || ((user.criteria2.to_i) == (user_logged.criteria2.to_i - 2))
      matching += 1
    end

    if user.criteria3 == user_logged.criteria3
      matching += 4
    elsif ((user.criteria3.to_i) == (user_logged.criteria3.to_i + 1)) || ((user.criteria3.to_i) == (user_logged.criteria3.to_i - 1))
      matching += 3
    elsif ((user.criteria3.to_i) == (user_logged.criteria3.to_i + 2)) || ((user.criteria3.to_i) == (user_logged.criteria3.to_i - 2))
      matching += 1
    end

    if user.criteria4 == user_logged.criteria4
      matching += 4
    elsif ((user.criteria4.to_i) == (user_logged.criteria4.to_i + 1)) || ((user.criteria4.to_i) == (user_logged.criteria4.to_i - 1))
      matching += 3
    elsif ((user.criteria4.to_i) == (user_logged.criteria4.to_i + 2)) || ((user.criteria4.to_i) == (user_logged.criteria4.to_i - 2))
      matching += 1
    end

    if user.criteria5 == user_logged.criteria5
      matching += 4
    elsif ((user.criteria5.to_i) == (user_logged.criteria5.to_i + 1)) || ((user.criteria5.to_i) == (user_logged.criteria5.to_i - 1))
      matching += 3
    elsif ((user.criteria5.to_i) == (user_logged.criteria5.to_i + 2)) || ((user.criteria5.to_i) == (user_logged.criteria5.to_i - 2))
      matching += 1
    end

    if user.criteria6 == user_logged.criteria6
      matching += 4
    elsif ((user.criteria6.to_i) == (user_logged.criteria6.to_i + 1)) || ((user.criteria6.to_i) == (user_logged.criteria6.to_i - 1))
      matching += 3
    elsif ((user.criteria6.to_i) == (user_logged.criteria6.to_i + 2)) || ((user.criteria6.to_i) == (user_logged.criteria6.to_i - 2))
      matching += 1
    end

    if user.criteria7 == user_logged.criteria7
      matching += 4
    elsif ((user.criteria7.to_i) == (user_logged.criteria7.to_i + 1)) || ((user.criteria7.to_i) == (user_logged.criteria7.to_i - 1))
      matching += 3
    elsif ((user.criteria7.to_i) == (user_logged.criteria7.to_i + 2)) || ((user.criteria7.to_i) == (user_logged.criteria7.to_i - 2))
      matching += 1
    end

    if user.criteria8 == user_logged.criteria8
      matching += 4
    elsif ((user.criteria8.to_i) == (user_logged.criteria8.to_i + 1)) || ((user.criteria8.to_i) == (user_logged.criteria8.to_i - 1))
      matching += 3
    elsif ((user.criteria8.to_i) == (user_logged.criteria8.to_i + 2)) || ((user.criteria7.to_i) == (user_logged.criteria8.to_i - 2))
      matching += 1
    end

    if user.criteria9 == user_logged.criteria9
      matching += 4
    elsif ((user.criteria9.to_i) == (user_logged.criteria9.to_i + 1)) || ((user.criteria9.to_i) == (user_logged.criteria9.to_i - 1))
      matching += 3
    elsif ((user.criteria9.to_i) == (user_logged.criteria9.to_i + 2)) || ((user.criteria9.to_i) == (user_logged.criteria9.to_i - 2))
      matching += 1
    end

    if user.criteria10 == user_logged.criteria10
      matching += 4
    elsif ((user.criteria10.to_i) == (user_logged.criteria10.to_i + 1)) || ((user.criteria10.to_i) == (user_logged.criteria10.to_i - 1))
      matching += 3
    elsif ((user.criteria10.to_i) == (user_logged.criteria7.to_i + 2)) || ((user.criteria10.to_i) == (user_logged.criteria10.to_i - 2))
      matching += 1
    end
    
    # raise
    matching_rate = (matching * 100) / 40
  end
end


