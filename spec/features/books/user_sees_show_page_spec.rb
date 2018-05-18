require 'rails_helper'

describe 'user visits book show page' do
  it 'shows a list of reviews with text, user name and rating' do
    book = Book.create(title: 'Catch 22')
    user = User.create(name: 'bob')
    review = book.reviews.create(text: 'great', rating: 5, user: user)

    visit book_show_path

    expect(page).to have_content(review.text)
    expect(page).to have_content(user.name)
    expect(page).to have_content(review.rating)
  end
end
