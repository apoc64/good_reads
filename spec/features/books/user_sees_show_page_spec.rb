require 'rails_helper'

describe 'user visits book show page' do
  it 'shows a list of reviews with text, user name and rating' do
    book = Book.create(title: 'Catch 22')
    user = User.create(name: 'bob')
    review = book.reviews.create(text: 'great', rating: 5, user: user)

    visit book_path(book)

    expect(page).to have_content(review.text)
    expect(page).to have_content(user.name)
    expect(page).to have_content(review.rating)
  end

  it 'shows the average rating for that book' do
    book = Book.create(title: 'Catch 22')
    user = User.create(name: 'bob')
    review1 = book.reviews.create(text: 'great', rating: 5, user: user)
    review2 = book.reviews.create(text: 'OK', rating: 3, user: user)

    visit book_path(book)
    average = (review1.rating + review2.rating) / 2

    expect(page).to have_content("Average Rating: #{average}")
  end

  it 'shows the highest rating for that book' do
    book = Book.create(title: 'Catch 22')
    user = User.create(name: 'bob')
    review1 = book.reviews.create(text: 'great', rating: 5, user: user)
    review2 = book.reviews.create(text: 'OK', rating: 3, user: user)

    visit book_path(book)

    expect(page).to have_content("Highest Rating: #{review1.rating}")
  end
end
