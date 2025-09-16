class CreateUserbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :userbooks do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
