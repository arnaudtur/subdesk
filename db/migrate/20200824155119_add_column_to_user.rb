class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :hq_address, :string
    add_column :users, :description, :text
    add_column :users, :year_of_creation, :integer
    add_column :users, :number_of_employees, :integer
    add_column :users, :average_age, :integer
    add_column :users, :weblink, :string
    add_column :users, :field, :string
    add_column :users, :code_naf, :string
    add_column :users, :criteria1, :integer
    add_column :users, :criteria2, :integer
    add_column :users, :criteria3, :integer
    add_column :users, :criteria4, :integer
  end
end
