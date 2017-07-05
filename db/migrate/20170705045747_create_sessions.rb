class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :contact_name
      t.string :email
      t.string :phone_number
      t.references :timeslot, foreign_key: true
      t.boolean :confirmation, default: false

      t.timestamps
    end
  end
end
