class BooksController < ApplicationController
  def show
    book = Book.find(params[:id])
    @reviews = book.reviews
    @average = @reviews.average(:rating)
    @max = @reviews.maximum(:rating)
  end
end
