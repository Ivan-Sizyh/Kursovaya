class BookIssue < ApplicationRecord
  belongs_to :book_card

  has_one :book_return, dependent: :destroy, required: false

  after_create :create_book_return

  scope :not_returned_books, -> { where('return_date >= ?', Date.current) }

  private

  def create_book_return
    BookReturn.create!(book_issue: self, returned: false )
  end
end
