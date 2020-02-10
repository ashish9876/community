class AddPetRefToDoggs < ActiveRecord::Migration[6.0]
  def change
    add_reference :doggs, :pet,   foreign_key: true
  end
end
