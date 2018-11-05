class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :position
      t.string :operator

      t.timestamps
    end
  end
end
