class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :PetClub_id

      t.timestamps
    end
  end
end
