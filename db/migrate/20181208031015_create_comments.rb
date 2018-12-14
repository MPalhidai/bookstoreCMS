class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user
      t.integer :rating
      t.string :content
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
