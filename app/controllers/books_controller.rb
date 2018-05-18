class BooksController < ApplicationController
  def show
    book = Book.find(params[:id])
    @reviews = book.reviews
    @average = @reviews.average(:rating)
    @max = @reviews.maximum(:rating)
    @low = @reviews.minimum(:rating)
    @max_review = @reviews.where(rating: @max).first
  end
end
