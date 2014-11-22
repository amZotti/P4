class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :query, null: false
      t.timestamps null: false
    end
  end
end
