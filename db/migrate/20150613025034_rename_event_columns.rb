class RenameEventColumns < ActiveRecord::Migration
  def change
    rename_column :events, :location, :city
    rename_column :events, :map_url, :address
  end
end
