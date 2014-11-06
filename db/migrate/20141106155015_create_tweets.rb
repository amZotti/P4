class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message, null: false
      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end
