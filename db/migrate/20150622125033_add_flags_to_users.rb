class AddFlagsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bachelor_party, :boolean
    add_column :users, :bachelorette_party, :boolean
    add_column :users, :chicago_shower, :boolean
    add_column :users, :tipton_shower, :boolean
    add_column :users, :rehearsal_dinner, :boolean
    add_column :users, :rehearsal, :boolean
  end
end
