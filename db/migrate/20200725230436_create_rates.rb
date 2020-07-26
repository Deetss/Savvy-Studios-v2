class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
