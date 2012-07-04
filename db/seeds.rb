# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Book.create(:author => 'Shakespeare',
           :book_name => 'Othello',
           :cover_path => '/covers/Othello.jpg',
           :txt_path => 'app/assets/txt/Othello.txt',
           :max_page_num => 10)
