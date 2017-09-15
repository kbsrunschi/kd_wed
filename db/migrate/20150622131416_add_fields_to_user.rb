class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :songs, :text
    add_column :users, :number_attending, :integer
    add_column :users, :attendees, :text
  end
end
