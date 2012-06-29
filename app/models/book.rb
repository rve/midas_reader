class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :cover_path, :max_page_num, :txt_path
end
