class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :current_page
      t.integer :current_chapter
      t.integer :total_pages
      t.string :category

      t.timestamps
    end
  end
end
