class AddPackageIdToRate < ActiveRecord::Migration[5.2]
  def change
    add_column :rates, :package_id, :integer
  end
end
