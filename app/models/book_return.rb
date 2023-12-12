class BookReturn < ApplicationRecord
  belongs_to :book_issue


  scope :pending_returns, -> { where(returned: false) }
end
