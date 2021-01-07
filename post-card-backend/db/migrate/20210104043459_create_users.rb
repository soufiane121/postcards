class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.jsonb :address
      t.string :gender
      t.date :age
      t.string :img

      t.timestamps
    end
  end
end
