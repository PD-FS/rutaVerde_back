class CreateActivityRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_registers do |t|
      t.references :activity, foreign_key: true
      t.integer :user_id
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :comments
      t.integer :value

      t.timestamps
    end
  end
end
