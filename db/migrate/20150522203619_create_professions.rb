class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
    	t.string :name, :null => :false
    end
  end
end
