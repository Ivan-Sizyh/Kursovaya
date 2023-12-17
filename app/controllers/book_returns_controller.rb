# frozen_string_literal: true

class BookReturnsController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @book_returns = BookReturn.all

    @pending_returns = BookReturn.pending_returns
  end
end
