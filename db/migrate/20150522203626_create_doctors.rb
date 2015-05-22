class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :address_1
    	t.string :address_2

    	t.string :zip_code
    	t.string :city
    	t.string :country

    	t.float :latitude
    	t.float :longitude

    	t.integer :profession_id
    end

    add_index :doctors, :profession_id
  end
end
