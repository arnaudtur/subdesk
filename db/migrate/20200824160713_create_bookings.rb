class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.string :status
      t.datetime :start_date
      t.datetime :end_date
      t.text :answer1
      t.text :answer2
      t.text :answer3

      t.timestamps
    end
  end
end
