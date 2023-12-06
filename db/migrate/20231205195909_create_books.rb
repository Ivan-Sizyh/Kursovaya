class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.references :type, foreigin_key: true, null: false

      t.timestamps
    end
  end
end
