class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :receiver_fname
      t.string :receiver_lname
      t.date :receiver_age
      t.jsonb :receiver_address
      t.integer :user_id
      t.integer :card_id

      t.timestamps
    end
  end
end
