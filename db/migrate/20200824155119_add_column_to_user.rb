class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :hq_address, :string
    add_column :users, :description, :text
    add_column :users, :year_of_creation, :integer
    add_column :users, :number_of_employees, :integer
    add_column :users, :average_age, :integer
    add_column :users, :weblinks, :string
    add_column :users, :criteria, :string, array: true, default: []
  end
end
