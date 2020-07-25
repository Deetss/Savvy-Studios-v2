class CreatePageContents < ActiveRecord::Migration[5.2]
  def change
    create_table :page_contents do |t|
      t.string :PageName
      t.text :content

      t.timestamps
    end
  end
end
