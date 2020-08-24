class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :name
      t.integer :price
      t.text :address
      t.text :description
      t.integer :total_seats
      t.integer :seats
      t.integer :room
      t.integer :size
      t.text :question1
      t.text :question2
      t.text :question3

      t.timestamps
    end
  end
end
