class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :location, length: { in: 2..20 }
  validates :limbs_missing, numericality: {less_than_or_equal_to: 4, greater_than_or_equal_to: 0}
  validates :url, length: { in: 5..100 }

  has_many :tweets, dependent: :destroy

  def timeline
    Tweet.where(recipient_id: id).order(created_at: :desc)
  end

  def possible_friends
    User.all_except(self).sample(3)
  end

  def self.all_except(user)
    where.not(id: user)
  end
end
