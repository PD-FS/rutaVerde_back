class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.date :initial_time
      t.date :final_time
      t.string :description
      t.string :requirements
      t.integer :user_id
      t.integer :civicoin_give
      t.boolean :cost
      t.decimal :value

      t.timestamps
    end
  end
end
