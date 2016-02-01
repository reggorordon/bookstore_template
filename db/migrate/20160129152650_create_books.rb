class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :catagory_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.string :price
      t.string :year
      t.string :buy
      t.string :excerpt
      t.string :format
      t.string :pages

      t.timestamps null: false
    end
  end
end
