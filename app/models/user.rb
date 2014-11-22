class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :location, length: { in: 2..20 }
  validates :limbs_missing, numericality: { only_integer: true },
                                        inclusion: {:in => [0, 4]}
  validates :url, length: { in: 5..100 }

  has_many :tweets, dependent: :destroy
end
