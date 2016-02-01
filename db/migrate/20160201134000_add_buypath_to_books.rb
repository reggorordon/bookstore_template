class AddBuypathToBooks < ActiveRecord::Migration
  def change
    add_column :books, :buypath, :string
  end
end
