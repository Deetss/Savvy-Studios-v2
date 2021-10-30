class AddPositionToPackage < ActiveRecord::Migration[6.1]
  def change
    add_column :packages, :position, :int
    add_index :packages, :position, unique: true
  end
end
