class AddRecipientIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :recipient_id, :integer
    change_column :tweets, :recipient_id, :integer, null: false
  end
end
