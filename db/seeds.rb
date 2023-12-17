# frozen_string_literal: true

5.times do
  Type.create!(
    name: FFaker::Book.genre
  )
end

types = Type.all

5.times do
  book = Book.create!(
    title: FFaker::Book.title,
    author: FFaker::Book.author
  )

  book.types << types.sample
end

5.times do
  Library.create!(
    title: FFaker::Lorem.word
  )
end

libraries = Library.all

libraries.each do |library|
  5.times do
    reader = Reader.create!(
      first_name: FFaker::Name.first_name,
      last_name: FFaker::Name.last_name,
      middle_name: FFaker::Name.first_name,
      home_address: FFaker::Address.street_address,
      home_phone: FFaker::PhoneNumber.phone_number,
      work_phone: FFaker::PhoneNumber.phone_number
    )
    library.readers << reader
  end
end

readers = Reader.all

books = Book.all

5.times do
  reader = readers.sample
  BookCard.create!(
    uniq_number: rand(100..999),
    book: books.sample,
    reader:,
    library: libraries.sample
  )
end

book_cards = BookCard.all

5.times do
  BookCard.all.sample

  BookIssue.create!(
    issue_date: FFaker::Time.between(30.days.ago, Time.current),
    return_date: FFaker::Time.between(8.days.from_now, 30.days.from_now),
    book_card: book_cards.sample
  )
end
