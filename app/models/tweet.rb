class Tweet < ActiveRecord::Base
  belongs_to :user

  def is_destroyable? (user_id)
    self.user_id == user_id || self.recipient_id == user_id
  end
end
