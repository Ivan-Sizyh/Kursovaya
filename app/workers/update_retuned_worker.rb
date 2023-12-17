# frozen_string_literal: true

class UpdateReturnedWorker # rubocop:disable Style/Documentation
  include Sidekiq::Worker

  def perform
    BookReturn.pending_returns.each do |book_return|
      book_return.update(returned: false) if return_date.present? && !returned?
    end
  end
end
