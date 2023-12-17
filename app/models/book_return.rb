# frozen_string_literal: true

class BookReturn < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :book_issue

  scope :pending_returns, -> { where(returned: false) }
end
