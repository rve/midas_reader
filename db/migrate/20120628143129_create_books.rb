class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :book_name
      t.string :cover_path
      t.string :txt_path
      t.integer :max_page_num

      t.timestamps
    end
  end
end
