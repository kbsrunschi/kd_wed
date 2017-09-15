class AddRsvpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rsvp, :boolean, null: false, default: false
  end
end
