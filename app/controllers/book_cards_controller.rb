class BookCardsController < ApplicationController
  def index
    @book_cards = BookCard.all
  end
end
