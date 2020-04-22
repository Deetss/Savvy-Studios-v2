class AddColumnsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :phone, :int
    add_column :contacts, :location, :string
    add_column :contacts, :date, :date
    add_column :contacts, :type, :string
  end
end
