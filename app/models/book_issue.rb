# frozen_string_literal: true

class BookIssue < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :book_card

  has_one :book_return, dependent: :destroy, required: false

  validates :return_date, presence: true
  validate :return_date_within_valid_range

  after_create :create_book_return

  scope :not_returned_books, -> { where('return_date >= ?', Date.current) }

  private

  def return_date_within_valid_range
    return unless return_date.present? && return_date < Date.current + 1.week

    errors.add(:return_date, 'must be at least one week from the current date')
  end

  def create_book_return
    BookReturn.create!(book_issue: self, returned: false)
  end
end
