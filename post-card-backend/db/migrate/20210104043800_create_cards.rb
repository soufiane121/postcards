class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :category
      t.string :img
      t.string :discrption 

      t.timestamps
    end
  end
end
