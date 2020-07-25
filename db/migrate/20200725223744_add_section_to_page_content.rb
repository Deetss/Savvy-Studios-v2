class AddSectionToPageContent < ActiveRecord::Migration[5.2]
  def change
    add_column :page_contents, :section, :string
  end
end
