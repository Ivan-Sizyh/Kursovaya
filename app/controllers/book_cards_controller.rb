# frozen_string_literal: true

class BookCardsController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @book_cards = BookCard.all
  end
end
