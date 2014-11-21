class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :location, :string, null: false, default: "Please enter"
    add_column :users, :decomposing, :boolean, null: false, default: true
    add_column :users, :limbs_missing, :integer, null: false, default: 0
    add_column :users, :url, :string, null: false, default: "http://spiritualmusclehead.files.wordpress.com/2013/09/plants-vs-zombies-2-14.jpg"
  end
end
