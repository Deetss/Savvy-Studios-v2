class CreatePackagesRates < ActiveRecord::Migration[5.2]
  def change
    create_table :packages_rates do |t|
      t.integer :package_id
      t.integer :rate_id

      t.timestamps
    end
  end
end
