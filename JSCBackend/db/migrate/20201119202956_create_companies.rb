class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
