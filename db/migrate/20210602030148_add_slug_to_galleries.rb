class AddSlugToGalleries < ActiveRecord::Migration[5.2]
  def change
    add_column :galleries, :slug, :string
  end
end
