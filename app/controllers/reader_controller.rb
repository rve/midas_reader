
class ReaderController < ApplicationController
  def index
    @books = Book.all
  end
end
