# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_231_209_171_950) do # rubocop:disable Metrics/BlockLength
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'book_cards', force: :cascade do |t|
    t.integer 'uniq_number', null: false
    t.bigint 'book_id', null: false
    t.bigint 'library_id', null: false
    t.bigint 'reader_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['book_id'], name: 'index_book_cards_on_book_id'
    t.index ['library_id'], name: 'index_book_cards_on_library_id'
    t.index ['reader_id'], name: 'index_book_cards_on_reader_id'
  end

  create_table 'book_issues', force: :cascade do |t|
    t.date 'issue_date', null: false
    t.date 'return_date', null: false
    t.bigint 'book_card_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['book_card_id'], name: 'index_book_issues_on_book_card_id'
  end

  create_table 'book_returns', force: :cascade do |t|
    t.boolean 'returned', default: false, null: false
    t.bigint 'book_issue_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['book_issue_id'], name: 'index_book_returns_on_book_issue_id'
  end

  create_table 'book_types', force: :cascade do |t|
    t.bigint 'book_id'
    t.bigint 'type_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['book_id'], name: 'index_book_types_on_book_id'
    t.index ['type_id'], name: 'index_book_types_on_type_id'
  end

  create_table 'books', force: :cascade do |t|
    t.string 'title', null: false
    t.string 'author', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'libraries', force: :cascade do |t|
    t.string 'title', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'library_memberships', force: :cascade do |t|
    t.bigint 'library_id', null: false
    t.bigint 'reader_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['library_id'], name: 'index_library_memberships_on_library_id'
    t.index ['reader_id'], name: 'index_library_memberships_on_reader_id'
  end

  create_table 'readers', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.string 'middle_name', null: false
    t.string 'home_address', null: false
    t.string 'home_phone', null: false
    t.string 'work_phone', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'types', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'book_returns', 'book_issues'
  add_foreign_key 'book_types', 'books'
  add_foreign_key 'book_types', 'types'
  add_foreign_key 'library_memberships', 'libraries'
  add_foreign_key 'library_memberships', 'readers'
end
