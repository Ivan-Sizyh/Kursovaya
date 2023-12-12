class CreateBookCards < ActiveRecord::Migration[7.0]
  def change
    create_table :book_cards do |t|
      t.integer :uniq_number, null: false
      t.references :book, foreigin_key: true, null: false
      t.references :library, foreigin_key: true, null: false
      t.references :reader, foreigin_key: true, null: false

      t.timestamps
    end
  end
end
