class AddContactNameToEvents < ActiveRecord::Migration
  def change
    add_column :events, :contact_name, :string
  end
end
