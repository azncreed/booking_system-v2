class CreateTimeslots < ActiveRecord::Migration[5.1]
  def change
    create_table :timeslots do |t|
      t.datetime :date
      t.datetime :start_time
      t.string :advisor

      t.timestamps
    end
  end
end
