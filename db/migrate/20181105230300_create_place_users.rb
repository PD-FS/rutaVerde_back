class CreatePlaceUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :place_users do |t|
      t.integer :user_id
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
