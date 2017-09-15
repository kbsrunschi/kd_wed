class DefaultUsersBooleansToFalse < ActiveRecord::Migration
  def change
    change_column :users, :admin, :boolean, null: false, default: false
    change_column :users, :bachelor_party, :boolean, null: false, default: false
    change_column :users, :bachelorette_party, :boolean, null: false, default: false
    change_column :users, :chicago_shower, :boolean, null: false, default: false
    change_column :users, :tipton_shower, :boolean, null: false, default: false
    change_column :users, :rehearsal_dinner, :boolean, null: false, default: false
    change_column :users, :rehearsal, :boolean, null: false, default: false
  end
end
