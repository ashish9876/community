class AddDoggRefToDoggBreeds < ActiveRecord::Migration[6.0]
  def change
    add_reference :dogg_breeds, :dogg, foreign_key: true
  end
end
